/*
 * 作成日: 2009/03/20
 */
package jp.ac.fit.asura.nao.naoji;

import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;

import javax.vecmath.Matrix3f;

import jp.ac.fit.asura.nao.Effector;
import jp.ac.fit.asura.nao.Joint;
import jp.ac.fit.asura.nao.PressureSensor;
import jp.ac.fit.asura.nao.Sensor;
import jp.ac.fit.asura.naoji.NaojiContext;
import jp.ac.fit.asura.naoji.jal.JALBroker;
import jp.ac.fit.asura.naoji.jal.JALMemory;
import jp.ac.fit.asura.naoji.jal.JALMotion;
import jp.ac.fit.asura.naoji.jal.JALMemory.FloatQuery;
import jp.ac.fit.asura.naoji.robots.NaoV3R.InterpolationType;

import org.apache.log4j.Logger;

/**
 * @author $Author: sey $
 *
 * @version $Id: $
 *
 */
public class NaojiDriver {
	private static final Logger log = Logger.getLogger(NaojiDriver.class);
	private NaojiContext context;
	private JALMemory memory;
	private JALMotion motion;
	private float[] sAngles;
	private float[] eAngles;
	private float[] accels;
	private float[] gyros;
	private float[] forces;
	private int[] joint2idMap;

	public NaojiDriver(NaojiContext context) {
		JALBroker broker = context.getParentBroker();
		memory = broker.createJALMemory();
		motion = broker.createJALMotion();
		String[] names = motion.getBodyJointNames();
		sAngles = new float[names.length];
		eAngles = new float[names.length];
		accels = new float[3];
		gyros = new float[2];
		forces = new float[8];

		joint2idMap = new int[names.length];
		for (int i = 0; i < names.length; i++) {
			String name = names[i];
			Joint j = Joint.valueOf(name);
			assert j != null;
			joint2idMap[j.ordinal()] = i;
		}
	}

	public class NaojiSensor implements Sensor {
		FloatQuery floatQuery;

		public void init() {
			log.info("init NaojiSensor.");
			List<String> fKeys = new ArrayList<String>();
			fKeys.add("Device/SubDeviceList/InertialSensor/AccX/Sensor/Value");
			fKeys.add("Device/SubDeviceList/InertialSensor/AccY/Sensor/Value");
			fKeys.add("Device/SubDeviceList/InertialSensor/AccZ/Sensor/Value");
			fKeys.add("Device/SubDeviceList/InertialSensor/GyrX/Sensor/Value");
			fKeys.add("Device/SubDeviceList/InertialSensor/GyrY/Sensor/Value");
			// FSRもfloatらしい.
			fKeys.add("Device/SubDeviceList/LFoot/FSR/FrontLeft/Sensor/Value");
			fKeys.add("Device/SubDeviceList/LFoot/FSR/FrontRight/Sensor/Value");
			fKeys.add("Device/SubDeviceList/LFoot/FSR/RearLeft/Sensor/Value");
			fKeys.add("Device/SubDeviceList/LFoot/FSR/RearRight/Sensor/Value");
			fKeys.add("Device/SubDeviceList/RFoot/FSR/FrontLeft/Sensor/Value");
			fKeys.add("Device/SubDeviceList/RFoot/FSR/FrontRight/Sensor/Value");
			fKeys.add("Device/SubDeviceList/RFoot/FSR/RearLeft/Sensor/Value");
			fKeys.add("Device/SubDeviceList/RFoot/FSR/RearRight/Sensor/Value");

			floatQuery = memory.createFloatQuery(fKeys);
		}

		public void after() {
			log.trace("init NaojiSensor.");
		}

		public void before() {
			log.trace("before NaojiSensor.");
			floatQuery.update();
			// intQuery.update();
			FloatBuffer fb = floatQuery.getBuffer();
			fb.get(accels);
			fb.get(gyros);
			fb.get(forces);
			fb.position(0);

			motion.getBodyAngles(sAngles);
			System.arraycopy(sAngles, 0, eAngles, 0, sAngles.length);
			log.trace("Joint RShoulderPitch:" + getJoint(Joint.RShoulderPitch));
		}

		// TODO マッピングがおかしい.
		public float getAccelX() {
			return accels[1];
		}

		public float getAccelY() {
			return -accels[2];
		}

		public float getAccelZ() {
			return accels[0];
		}

		public float getForce(Joint joint) {
			return 0;
		}

		/**
		 * FSRの値を圧力値(ニュートン)に変換する.
		 *
		 * 手抜き実装.
		 *
		 * @param a
		 * @return
		 */
		private float fsrFilter(float a) {
			if (a <= 0.0) {
				log.error("Invalid FSR value:" + a);
				return 0;
			}
			float r = 1 / a - 0.000330907f;
			if (r < 0.0) {
				if (r < -1e-3f)
					log.error("Invalid FSR value:" + r);
				return 0;
			}
			return r * (615078.52707555173569009555449944f / 1000.0f);
		}

		public float getForce(PressureSensor ts) {
			return fsrFilter(forces[ts.ordinal()]);
		}

		public void getGpsRotation(Matrix3f rotationMatrix) {
		}

		public float getGpsX() {
			return 0;
		};

		public float getGpsY() {
			return 0;
		}

		public float getGpsZ() {
			return 0;
		}

		public float getGyroX() {
			return gyros[0];
		}

		public float getGyroZ() {
			return gyros[1];
		}

		public float getJoint(Joint joint) {
			return sAngles[joint2idMap[joint.ordinal()]];
		}

		public float getJointDegree(Joint joint) {
			return (float) Math.toDegrees(getJoint(joint));
		}
	}

	public class NaojiEffector implements Effector {
		public void init() {
			log.trace("init NaojiEffector.");
		}

		public void after() {
			log.trace("after NaojiEffector.");

			motion.gotoBodyAngles(eAngles, 0.25f, InterpolationType.LINEAR
					.getId());
			log.trace("goto Joint RShoulderPitch:"
					+ eAngles[joint2idMap[Joint.RShoulderPitch.ordinal()]]);
		}

		public void before() {
			log.trace("before NaojiEffector.");
		}

		public void setForce(Joint joint, float valueTorque) {
			// Not implemented.
		}

		public void setJoint(Joint joint, float valueInRad) {
			eAngles[joint2idMap[joint.ordinal()]] = valueInRad;
		}

		public void setJointDegree(Joint joint, float valueInDeg) {
			setJoint(joint, (float) Math.toRadians(valueInDeg));
		}

		public void setJointMicro(Joint joint, int valueInMicroRad) {
			setJoint(joint, valueInMicroRad / 1e-6f);
		}

		public void setPower(boolean sw) {
			// Set stiffness 0 or 1
			if (sw) {
				// motion.setBodyStiffness(1.0f);
				motion.gotoBodyStiffness(0.25f, 0.5f,
						InterpolationType.LINEAR.getId());
			} else {
				motion.gotoBodyStiffness(0.0f, 0.125f, InterpolationType.LINEAR
						.getId());
			}
		}
	}
}
