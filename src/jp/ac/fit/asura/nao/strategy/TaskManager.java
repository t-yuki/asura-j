/*
 * 作成日: 2008/05/18
 */
package jp.ac.fit.asura.nao.strategy;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import jp.ac.fit.asura.nao.RobotContext;
import jp.ac.fit.asura.nao.strategy.actions.InitialTask;
import jp.ac.fit.asura.nao.strategy.actions.LookAroundTask;
import jp.ac.fit.asura.nao.strategy.permanent.BallTrackingTask;
import jp.ac.fit.asura.nao.strategy.schedulers.GoalieStrategyTask;
import jp.ac.fit.asura.nao.strategy.schedulers.StrategySchedulerTask;
import jp.ac.fit.asura.nao.strategy.schedulers.StrikerStrategyTask;
import jp.ac.fit.asura.nao.strategy.tactics.FindBallTask;
import jp.ac.fit.asura.nao.strategy.tactics.GetToBallTask;

/**
 * @author $Author$
 * 
 * @version $Id$
 * 
 */
public class TaskManager {
	private Map<String, Task> tasks;

	private boolean initialized;

	public TaskManager() {
		tasks = new HashMap<String, Task>(64);
		initialized = false;
	}

	public void init(RobotContext context) {
		registerTasks();

		initialized = true;

		for (Task task : tasks.values())
			task.init(context);
	}

	private void registerTasks() {
		add(new BallTrackingTask());

		add(new FindBallTask());
		add(new GetToBallTask());
		add(new LookAroundTask());
		add(new InitialTask());

		add(new StrategySchedulerTask());
		add(new GoalieStrategyTask());
		add(new StrikerStrategyTask());
	}

	public void add(Task task) {
		assert !tasks.containsKey(task.getName());
		assert !initialized;
		tasks.put(task.getName(), task);
	}

	public Task find(String name) {
		if (!tasks.containsKey(name)) {
			System.err.println("TaskManager: task not found " + name);
		}
		return tasks.get(name);
	}

	public Collection<Task> values() {
		return tasks.values();
	}
}