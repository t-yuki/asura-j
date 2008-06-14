/*
 * 作成日: 2008/06/13
 */
package jp.ac.fit.asura.nao.strategy.schedulers;

import jp.ac.fit.asura.nao.strategy.StrategyContext;

/**
 * @author $Author: sey $
 * 
 * @version $Id: $
 * 
 */
public class GoalieStrategyTask extends StrategyTask {
	void fillQueue(StrategyContext context) {
		context.pushQueue("LookAroundTask");
	}

	public String getName() {
		return GoalieStrategyTask.class.getSimpleName();
	}

}