package reservation.controller;

import reservation.model.Action;
import reservation.model.Action1;
import reservation.model.AllReserSearchAction;
import reservation.model.AllUserReserSelectAction;
import reservation.model.ReserCancleAction;
import reservation.model.ReserCancleFormAction;
import reservation.model.ReserInfoAction;
import reservation.model.ReserWriteAction;
import reservation.model.ReserWriteFormAction;
import reservation.model.RoomSelectAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);

		if (command.equals("reser_write_form")) {
			action = new ReserWriteFormAction();
		} else if (command.equals("reser_view")) {
			action = new ReserWriteAction();
		} else if (command.equals("reser_info")) {
			action = new ReserInfoAction();
		} else if (command.equals("reser_cancle")) {
			action = new ReserCancleAction();
		} else if (command.equals("reser_cancle_action")) {
			action = new ReserCancleFormAction();
		} else if (command.equals("all_user_reser_select")) {
			action = new AllUserReserSelectAction();
		} else if (command.equals("search_action")) {
			action = new AllReserSearchAction();
		}

		return action;
	}
	
	public Action1 getAction1(String command) {
		Action1 action1 = null;
		System.out.println("ActionFactory : " + command);

		if (command.equals("roomSelect")) {
			action1 = new RoomSelectAction();
		}
		return action1;
	}
}
