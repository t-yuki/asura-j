/*
 * 作成日: 2008/06/11
 */
package jp.ac.fit.asura.nao.misc;

/**
 * @author sey
 * 
 * @version $Id$
 * 
 */
public class MathUtils {
	/**
	 * valueの値をminからmaxの間にクリッピングします.
	 * 
	 * @param value
	 * @param min
	 * @param max
	 * @return
	 */
	public static float clipping(float value, float min, float max) {
		if (value > max)
			return max;
		if (value < min)
			return min;
		return value;
	}

	/**
	 * valueの絶対値がabsMaxより大きければ，クリッピングして返します. このとき，valueの符号は保存されます.
	 */
	public static float clipAbs(float value, float absMax) {
		absMax = Math.abs(absMax);
		if (Math.abs(value) > absMax)
			return Math.signum(value) * absMax;
		return value;
	}

	/**
	 * angleを-180度以上～180度未満の間に正規化します.
	 * 
	 * @param angle
	 * @return
	 */
	public static float normalizeAngle180(float angle) {
		while (angle >= 180)
			angle -= 360;
		while (angle < -180)
			angle += 360;
		return angle;
	}

	/**
	 * angleを0度以上～360度未満の間に正規化します.
	 * 
	 * @param angle
	 * @return
	 */
	public static float normalizeAngle360(float angle) {
		while (angle >= 360)
			angle -= 360;
		while (angle < 0)
			angle += 360;
		return angle;
	}
}