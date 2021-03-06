package jp.ac.fit.asura.nao.strategy.tactics;

/**
 * ボールの加速度を   ボールの加速度＝前のボール位置（balld0）- 後のボールの位置（balld）   という風にする。
 * もし加速度が20以上だったら対応した方向の腕を動かすモーションを使う。
 * headingで対応する腕を決める。
 *
 * @author aqua
 */

import org.apache.log4j.Logger;
import jp.ac.fit.asura.nao.RobotContext;
import jp.ac.fit.asura.nao.localization.WorldObject;
import jp.ac.fit.asura.nao.motion.Motions;
import jp.ac.fit.asura.nao.strategy.StrategyContext;
import jp.ac.fit.asura.nao.strategy.Task;
import jp.ac.fit.asura.nao.strategy.permanent.BallTrackingTask;
import jp.ac.fit.asura.nao.strategy.permanent.BallTrackingTask.Mode;

public class GoalieTask extends Task {

	private static final Logger log = Logger.getLogger(GoalieTask.class);
	private double balld;
	private double balld0;
	private float ballh;
	private float ballh0;
	private long ballt;
	private BallTrackingTask tracking;
	private int switchFlag;

	@Override
	public String getName() {
		// TODO 自動生成されたメソッド・スタブ
		return "GoalieTask";
	}

	@Override
	public void init(RobotContext context) {
		tracking = (BallTrackingTask) context.getStrategy().getTaskManager()
				.find("BallTracking");

		switchFlag = 0;

	}

	public void after(StrategyContext context) {

		// log.info("balld(after)=" + balld);
		// log.info("balld0(after)=" + balld0);
		// log.info("ballh(after)=" + ballh);
		// log.info("ballh0(after)=" + ballh0);
		// log.info("ballt(after)=" + ballt);

		if (ballt <= 5000) {
			if (context.getGoalieFlag() == false && context.getFrame() % 3 == 0) {

				// 前のボールの値を保存する
				balld0 = balld;
				ballh0 = ballh;

				// log.info("balld(after2)=" + balld);
				// log.info("balld0(after2)=" + balld0);
				// log.info("ballh(after2)=" + ballh);
				// log.info("ballh0(after2)=" + ballh0);

				// 値保存のためのフラグ
				context.setGoalieFlag(true);
				log.debug("GoalieFlag = 1");

			}

		} else {
			balld = 0;
			ballh = 0;
			balld0 = 0;
			ballh0 = 0;

			// ゴーリーの横でボールが止まっていて見失った時の保険

			if (context.getFrame() % 5 == 0) {
				context.makemotion(Motions.MOTION_L_GOTE_ITO);
				context.makemotion(Motions.MOTION_R_GOTE_ITO);
			}

		}
	}

	/**
	 * 前のボールの距離と後のボールの距離を比較する。 腕を振る方向は、前保存した値と後で保存した値を比較する。 正面の時は蹴り返す処理。
	 * 
	 */

	@Override
	public void continueTask(StrategyContext context) {
		// TODO 自動生成されたメソッド・スタブ

		tracking.setMode(Mode.Cont);
		WorldObject ball = context.getBall();
		balld = ball.getDistance();
		ballh = ball.getHeading();
		ballt = ball.getDifftime();

		if (context.getGoalieFlag() == true && balld <= 1400) {

			context.setGoalieFlag(false);
			log.info("GoalieFlag = 0");

			// log.info("balld  =" + balld);
			// log.info("balld0 =" + balld0);
			// log.info("ballh  =" + ballh);
			// log.info("ballh0 =" + ballh0);

			// 状態：キックモーションのフラグ
			if (context.getGoalieKickFlag() == false && balld <= 300) {
				context.setGoalieDefenceFlag(false);
				context.setGoalieKickFlag(true);
				// log.info("------------------");
				// log.info("GoalieKickFlag = 1");
				// log.info("------------------");

			}

			// 状態:ディフェンスモーションのフラグ
			if (context.getGoalieDefenceFlag() == false && balld > 300) {
				context.setGoalieDefenceFlag(true);
				context.setGoalieKickFlag(false);

				// log.info("------------------");
				// log.info("GoalieDefenceFlag=1");
				// log.info("------------------");
			}

			/**
			 * 状態の切り替え 1 ディフェンスモーション 2 キックモーション
			 */
			if (context.getGoalieDefenceFlag() == true
					&& context.getGoalieKickFlag() == false) {
				switchFlag = 1;
			} else if (context.getGoalieDefenceFlag() == false
					&& context.getGoalieKickFlag() == true) {
				switchFlag = 2;
			}

			log.info("switchFlag=" + switchFlag);

			switch (switchFlag) {

			case 1:
				// ディフェンスモーションを出すときのパターン
				if (balld0 - balld >= 10) {
					// ballが左側にあるとき
					if (ballh0 > 0) {
						// ballが左側からゴーリーの左側に抜けるとき
						if (ballh0 < ballh) {
							log.info("L^L");
							context.makemotion(Motions.MOTION_L_GORI_ITO);
						} else
						// ballが左側からゴーリーの右側に抜けるとき
						if (ballh0 > ballh) {
							log.info("L^R");
							context.makemotion(Motions.MOTION_R_GORI_ITO);
						}

					} else
					// ballが右側にあるとき
					if (ballh0 <= 0) {
						// ballが右側からゴーリーの左側に抜けるとき
						if (ballh0 < ballh) {
							log.info("R^L");
							context.makemotion(Motions.MOTION_L_GORI_ITO);

						} else
						// ballが右側からゴーリーの右側に抜けるとき
						if (ballh0 > ballh) {
							log.info("R^R");
							context.makemotion(Motions.MOTION_R_GORI_ITO);

						}
					}

					/**
					 * 止めた後を想定してキックモーションのフラグを立て、ディフェンスモーションのフラグを折る。
					 */

					context.setGoalieDefenceFlag(false);
					log.info("GoalieDefenceFlag=0");
					context.setGoalieKickFlag(true);
					log.info("GoalieKickFlag=1");
					switchFlag = 0;
					log.info("switchFlag=0");

					// 前保存した値を初期化する
					balld = 0;
					ballh = 0;
					balld0 = 0;
					ballh0 = 0;
					log.info("balld(zero1) =" + balld);
					log.info("ballh(zero1) =" + ballh);
					log.info("balld0(zero1)=" + balld0);
					log.info("ballh0(zero1)=" + ballh0);

				}
				break;

			case 2:
				// 近距離モーションを出すときのパターン
				if (ballh > 0) {
					// 左側
					if (ballh <= 40) {
						if (balld <= 180) {
							log.info("S^C^SiL");
							context.makemotion(Motions.MOTION_L_GOKIS_ITO);

							context.setGoalieKickFlag(false);
							log.info("GoalieKickFlag=0");
							context.setGoalieDefenceFlag(false);
							log.info("GoalieDefenceFlag=0");
							switchFlag = 0;
							log.info("switchFlag=0");
							// 前保存した値を初期化する
							balld = 0;
							ballh = 0;
							balld0 = 0;
							ballh0 = 0;
							log.info("balld(zero) =" + balld);
							log.info("ballh(zero) =" + ballh);
							log.info("balld0(zero)=" + balld0);
							log.info("ballh0(zero)=" + ballh0);
						}
					} else if (balld <= 280) {
						log.info("S^C^TL");
						context.makemotion(Motions.MOTION_L_GOTE_ITO);

						context.setGoalieKickFlag(false);
						log.info("GoalieKickFlag=0");
						context.setGoalieDefenceFlag(false);
						log.info("GoalieDefenceFlag=0");
						switchFlag = 0;
						log.info("switchFlag=0");
						// 前保存した値を初期化する
						balld = 0;
						ballh = 0;
						balld0 = 0;
						ballh0 = 0;
						log.info("balld(zero) =" + balld);
						log.info("ballh(zero) =" + ballh);
						log.info("balld0(zero)=" + balld0);
						log.info("ballh0(zero)=" + ballh0);
					} else if (balld <= 500) {

						// ボールへ近づくための処理

					}

				}// 右側
				else if (ballh <= 0) {
					if (ballh >= -50) {
						if (balld <= 180) {
							log.info("S^C^SiR");
							context.makemotion(Motions.MOTION_R_GOKIS_ITO);

							context.setGoalieKickFlag(false);
							log.info("GoalieKickFlag=0");
							context.setGoalieDefenceFlag(false);
							log.info("GoalieDefenceFlag=0");
							switchFlag = 0;
							log.info("switchFlag=0");
							// 前保存した値を初期化する
							balld = 0;
							ballh = 0;
							balld0 = 0;
							ballh0 = 0;
							log.info("balld(zero) =" + balld);
							log.info("ballh(zero) =" + ballh);
							log.info("balld0(zero)=" + balld0);
							log.info("ballh0(zero)=" + ballh0);
						}
					} else if (balld <= 300) {
						log.info("S^C^TR");
						context.makemotion(Motions.MOTION_R_GOTE_ITO);

						context.setGoalieKickFlag(false);
						log.info("GoalieKickFlag=0");
						context.setGoalieDefenceFlag(false);
						log.info("GoalieDefenceFlag=0");
						switchFlag = 0;
						log.info("switchFlag=0");
						// 前保存した値を初期化する
						balld = 0;
						ballh = 0;
						balld0 = 0;
						ballh0 = 0;
						log.info("balld(zero) =" + balld);
						log.info("ballh(zero) =" + ballh);
						log.info("balld0(zero)=" + balld0);
						log.info("ballh0(zero)=" + ballh0);
					} else if (balld <= 500) {

						// ボールへ近づくための処理

					}

				}
				break;

			default:

			}

			// ボールへ近づいた時に元の場所に戻ろうとする処理

		}
	}// continue end

	@Override
	public void leave(StrategyContext context) {
		// TODO 自動生成されたメソッド・スタブ
	}

	@Override
	public void enter(StrategyContext context) {
		// TODO 自動生成されたメソッド・スタブ
		context.getScheduler().setTTL(100);
	}

}