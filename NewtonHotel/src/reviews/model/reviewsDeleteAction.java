package reviews.model;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reviews.dao.reviewsDAO;
import reviews.dto.reviewsVO;

public class reviewsDeleteAction implements reviewsAction {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");

		reviewsDAO bDao = reviewsDAO.getInstance();
		bDao.deletereviews(num);
		String url = "/reviews/reviewsList.jsp";

		List<reviewsVO> reviewsList = bDao.reviewsList();

		request.setAttribute("reviewsList", reviewsList);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
//		new reviewsListAction().execute(request,response);

	}

}
