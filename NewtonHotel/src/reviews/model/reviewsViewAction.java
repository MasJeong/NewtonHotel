package reviews.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reviews.dao.reviewsDAO;
import reviews.dto.reviewsVO;

public class reviewsViewAction implements reviewsAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/reviews/reviewsView.jsp";

		int num = Integer.parseInt(request.getParameter("num"));
		reviewsDAO bDao = reviewsDAO.getInstance();
		System.out.println(num);
		reviewsVO reviewsView = bDao.selectOnereviewsByNum(num);
//		bDao.updateReadcount(num);
		request.setAttribute("reviewsView", reviewsView);
		System.out.println("불러오는 곳 : " + reviewsView.getNum());
		System.out.println("불러오는 곳 : " + reviewsView.getTitle());
		System.out.println("랭크불러오는 곳 : " + reviewsView.getRank());

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
