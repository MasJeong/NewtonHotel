package com.saeyan.controller;

import com.saeyan.model.Action_1;
import com.saeyan.model.AdminPwdUpdateAction;
import com.saeyan.model.AdmintPwdUpdateActionA;
import com.saeyan.model.AllUserInfoSearchAction;
import com.saeyan.model.AllUserInfoSelectAction;
import com.saeyan.model.MypageAction;
import com.saeyan.model.UserInfoDeleteAction;
import com.saeyan.model.UserInfoSelectAction;
import com.saeyan.model.UserPwdUpdateAction;
import com.saeyan.model.UserPwdUpdateActionAction;

public class ActionFactory_1 {
	private static ActionFactory_1 instance = new ActionFactory_1();

	private ActionFactory_1() {
		super();
	}

	public static ActionFactory_1 getInstance() {
		return instance;
	}

	public Action_1 getAction(String command) {
		Action_1 action_1 = null;
		System.out.println("ActionFactory_1 : " + command);

		if (command.equals("all_user_info_select")) {
			action_1 = new AllUserInfoSelectAction();
		} else if(command.equals("member_search_action")) {
			action_1 = new AllUserInfoSearchAction();
		} else if(command.equals("user_pwd_update")) {
			action_1 = new UserPwdUpdateAction();
		} else if(command.equals("user_pwd_update_action")) {
			action_1 = new UserPwdUpdateActionAction();
		} else if(command.equals("user_info_select")) {
			action_1 = new UserInfoSelectAction();
		} else if(command.equals("user_info_delete")) {
			action_1 = new UserInfoDeleteAction();
		} else if(command.equals("admin_pwd_update")) {
			action_1 = new AdminPwdUpdateAction();
		} else if(command.equals("admin_pwd_update_action")) {
			action_1 = new AdmintPwdUpdateActionA();
		} else if(command.equals("mypage_action")) {
			action_1 = new MypageAction();
		}

		return action_1;
	}
}
