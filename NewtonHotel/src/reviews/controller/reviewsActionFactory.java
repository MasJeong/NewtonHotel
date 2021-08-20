package reviews.controller;

import reviews.model.faqAction;
import reviews.model.reviewsAction;
import reviews.model.reviewsDeleteAction;
import reviews.model.reviewsListAction;
import reviews.model.reviewsViewAction;
//import reviews.model.reviewsWriteAction;
import reviews.model.reviews_write_change_windowAction;

public class reviewsActionFactory {
	private static reviewsActionFactory instance = new reviewsActionFactory();

	private reviewsActionFactory() {
		super();
	}

	public static reviewsActionFactory getInstance() {
		return instance;
	}

	public reviewsAction getAction(String command) {
		reviewsAction action = null;
		System.out.println("ActionFactory :" + command);
		if (command.equals("reviews_list")) {
			action = new reviewsListAction();
		} else if (command.equals("faq")) {
			action = new faqAction();
//		} else if (command.equals("reviews_write")) {
//			action = new reviewsWriteAction();
		} else if (command.equals("reviewsView")) {
			action = new reviewsViewAction();
		} else if (command.equals("reviews_check_pass_form")) {

		} else if (command.equals("reviews_write_change_window")) {
			action = new reviews_write_change_windowAction();
		} else if (command.equals("reviews_delete")) {
			action = new reviewsDeleteAction();
		} else {
			System.out.println("액션에 연결하지 못함");
		}
		return action;
	}
}
