package reviews.model;

import java.io.IOException;
import java.util.List;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reviews.dao.reviewsDAO;
import reviews.dto.reviewsVO;


public class reviewsListAction implements reviewsAction{
	
@Override
public void execute(HttpServletRequest request, HttpServletResponse reponse)
		throws ServletException, IOException {
	String url = "/reviews/reviewsList.jsp";
	
	reviewsDAO bDao=reviewsDAO.getInstance();
    List<reviewsVO> reviewsList = bDao.reviewsList();
    
	request.setAttribute("reviewsList", reviewsList);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	dispatcher.forward(request, reponse);
}
}
