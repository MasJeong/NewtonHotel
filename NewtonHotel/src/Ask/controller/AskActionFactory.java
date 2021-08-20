package Ask.controller;

import Ask.model.AskAction;
import Ask.model.AskDeleteAction;
import Ask.model.AskListAction;
import Ask.model.AskViewAction;
import Ask.model.ask_write_change_windowAction;
import Ask.model.faqAction;

public class AskActionFactory {
	private static AskActionFactory instance = new AskActionFactory();

	private AskActionFactory() {
		super();
	}

	public static AskActionFactory getInstance() {
		return instance;
	}

	public AskAction getAction(String command) {
		AskAction action = null;
		System.out.println("ActionFactory :" + command);
		if (command.equals("ask_list")) {
			action = new AskListAction();
		} else if (command.equals("faq")) {
			action = new faqAction();
		} else if (command.equals("askView")) {
			action = new AskViewAction();
		} else if (command.equals("ask_write_change_window")) {
			action = new ask_write_change_windowAction();
		} else if (command.equals("ask_delete")) {
			action = new AskDeleteAction();
		} else {
			System.out.println("action 연결에 실패하였습니다.");
		}
		return action;
	}
}
