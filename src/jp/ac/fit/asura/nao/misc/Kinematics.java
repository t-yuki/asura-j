/*
 * 作成日: 2008/10/03
 */
package jp.ac.fit.asura.nao.misc;

import javax.vecmath.GMatrix;
import javax.vecmath.GVector;
import javax.vecmath.Matrix3f;
import javax.vecmath.Vector3f;

import jp.ac.fit.asura.nao.physical.Nao;
import jp.ac.fit.asura.nao.physical.Nao.Frames;
import jp.ac.fit.asura.nao.sensation.FrameState;
import jp.ac.fit.asura.nao.sensation.SomaticContext;

/**
 * 運動学/逆運動学計算.
 * 
 * @author sey
 * 
 * @version $Id: $
 * 
 */
public class Kinematics {
	public static GMatrix calculateJacobian(Frames from, Frames to,
			SomaticContext context) {
		Frames[] route = Nao.findRoute(from, to);
		assert route != null;

		GMatrix mat = new GMatrix(6, route.length);

		// JointStateから取得する
		FrameState endFrame = context.get(to);
		Vector3f end = endFrame.getRobotPosition();

		// Bodyから基準座標系への位置ベクトルを，すべての位置ベクトルに足す
		// ことで，基準座標系からの絶対位置を表現する

		for (int i = 0; i < route.length; i++) {
			FrameState fs = context.get(route[i]);

			// このフレームの座標
			Vector3f pos = fs.getRobotPosition();
			Vector3f deltaPos = new Vector3f(end);
			deltaPos.sub(pos);
			// dPos = end - position(i)

			// このへんちょっと怪しい parent使わないとだめかも
			Vector3f zi = new Vector3f();
			zi.x = fs.getRobotRotation().m02;
			zi.y = fs.getRobotRotation().m12;
			zi.z = fs.getRobotRotation().m22;

			mat.setElement(3, i, zi.x);
			mat.setElement(4, i, zi.y);
			mat.setElement(5, i, zi.z);

			Vector3f cross = zi;
			cross.cross(zi, deltaPos);
			mat.setElement(0, i, cross.x);
			mat.setElement(1, i, cross.y);
			mat.setElement(2, i, cross.z);

		}

		return mat;
	}

	/**
	 * 逆運動学の計算.
	 * 
	 * @param ss
	 * @param id
	 * @param position
	 */
	public static void calculateInverseKinematics(SomaticContext context,
			FrameState target) {
		final double EPS = 1e-3;
		Frames[] route = Nao.findRoute(Frames.Body, target.getId());

		GVector err = new GVector(6);
		GVector dq = new GVector(route.length);

		for (int i = 0; i < 100; i++) {
			calculateForward(context);

			GMatrix jacobi = calculateJacobian(Frames.Body, target.getId(),
					context);
			assert jacobi != null && jacobi.getNumRow() == 6
					&& jacobi.getNumCol() == route.length;

			calcError(target, context.get(target.getId()), err);
			if (err.normSquared() < EPS)
				return;

			assert false;
			// 未完成.
			// err[6x1] = jacobi[6xN] * dq[Nx1]
			// この連立方程式をといてdqを求めなければならない. N=6であれば
			// dq[Nx1] = (jacobi^-1)[Nx6] * err[6x1]
			// でとけるが... 一般にN>6となるので、何らかの制約条件が必要.
			// 分解速度制御法など.

			for (int j = 0; j < route.length; i++) {
				FrameState fs = context.get(route[j]);
				fs.getAxisAngle().angle += dq.getElement(j);
			}
		}
	}

	/**
	 * ロボット座標系での二つの関節の位置と姿勢の差を返します.
	 * 
	 * @param expected
	 * @param actual
	 * @param err
	 */
	private static void calcError(FrameState expected, FrameState actual,
			GVector err) {
		assert err.getSize() == 6;
		Vector3f p1 = expected.getRobotPosition();
		Vector3f p2 = actual.getRobotPosition();

		// 目標(expected)との位置の差をとる.
		err.setElement(0, p1.x - p2.x);
		err.setElement(1, p1.y - p2.y);
		err.setElement(2, p1.z - p2.z);

		Matrix3f r1 = expected.getRobotRotation();
		Matrix3f r2 = actual.getRobotRotation();
		// r2^-1は回転行列の逆(すなわち、-θ)を表す.
		// r2^-1 * r1とすることで、回転角度的にはθ = r2 - r1を求めている.
		// よって、rotErrはr1とr2の角度の差を表している.
		Matrix3f rotErr = new Matrix3f();
		rotErr.invert(r2);
		rotErr.mul(r1);

		// 回転角度の差を角速度ベクトルomegaに変換する.
		// omegaは1秒間でrotErr分の回転角度を実現するための角速度である.
		// すなわち、回転行列を角度とみなすと、形式的にはomega = rotErr [rad/s] となる.
		Vector3f omega = new Vector3f();
		rot2omega(rotErr, omega);

		// ω' = Rωとして、r2にあわせて角速度ベクトルomegaを回転する.
		r2.transform(omega);

		// 角速度ベクトルをセット
		err.setElement(3, omega.x);
		err.setElement(4, omega.y);
		err.setElement(5, omega.z);
	}

	/**
	 * 回転行列から角速度ベクトルへの変換. ヒューマノイドロボット p35より.
	 * 
	 * @param rotation
	 *            変換する回転行列
	 * @param omega
	 *            角速度ベクトルの書き込み先
	 */
	private static void rot2omega(Matrix3f rot, Vector3f omega) {
		if (MatrixUtils.isIdentity(rot)) {
			omega.set(0, 0, 0);
			return;
		}
		omega.setX(rot.m21 - rot.m12);
		omega.setY(rot.m02 - rot.m20);
		omega.setZ(rot.m10 - rot.m01);
		// 単位行列であれば上の分岐で処理されているはずだが.
		assert (rot.m00 + rot.m11 + rot.m22 - 1) / 2.0f != 0;
		double theta = Math.acos((rot.m00 + rot.m11 + rot.m22 - 1) / 2.0f);
		omega.scale((float) (theta / (2 * Math.sin(theta))));
	}

	/**
	 * ロボット全体の順運動学の計算.
	 * 
	 * @param ss
	 */
	public static void calculateForward(SomaticContext ss) {
		// Bodyから再帰的にPositionを計算
		RobotFrame rf = Nao.get(Frames.Body);
		FrameState fs = ss.get(Frames.Body);
		assert fs.getPosition().equals(rf.translate);

		// Bodyの座標をセット
		fs.getRotation().set(fs.getAxisAngle());
		fs.getRobotRotation().set(fs.getAxisAngle());
		fs.getRobotPosition().set(fs.getPosition());

		// 子フレームがあれば再帰的に計算する
		if (rf.child != null)
			for (RobotFrame child : rf.child)
				forwardKinematics(ss, child.id);
	}

	private static void forwardKinematics(SomaticContext ss, Frames id) {
		RobotFrame rf = Nao.get(id);
		FrameState fs = ss.get(id);

		// Body及び親フレームは計算されていることが前提
		assert id != Frames.Body && rf.parent != null;
		// 親フレームからみた回転軸は変化しない(角度は変わる)
		assert fs.getAxisAngle().x == Nao.get(id).axis.x;
		assert fs.getAxisAngle().y == Nao.get(id).axis.y;
		assert fs.getAxisAngle().z == Nao.get(id).axis.z;

		// 親フレームの値
		FrameState parent = ss.get(rf.parent.id);
		Matrix3f parentRotation = parent.getRobotRotation();
		Vector3f parentPosition = parent.getRobotPosition();

		// このフレームの値
		Matrix3f rotation = fs.getRotation();
		Matrix3f robotRotation = fs.getRobotRotation();

		// 回転行列をセット
		rotation.set(fs.getAxisAngle());
		// 親フレームからの回転行列をチェーンする
		robotRotation.mul(parentRotation, rotation);

		Vector3f position = fs.getPosition();
		Vector3f robotPosition = fs.getRobotPosition();
		// 旋回関節のみを想定しているので、親フレームからの位置ベクトルは変化しない
		assert position.equals(rf.translate);

		// 親フレームからの位置ベクトルをロボット座標系でのベクトルに直す
		// robotPosition = parentRotation*position
		parentRotation.transform(position, robotPosition);
		// 親フレームの位置ベクトルと繋げてこのフレームの位置ベクトルをつくる
		// robotPosition += parentPosition
		robotPosition.add(parentPosition);

		// 子フレームがあれば再帰的に計算する
		if (rf.child != null)
			for (RobotFrame child : rf.child)
				forwardKinematics(ss, child.id);
	}
}
