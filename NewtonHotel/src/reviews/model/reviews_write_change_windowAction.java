package reviews.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class reviews_write_change_windowAction implements reviewsAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/reviews/reviewswrite.jsp");
		dispatcher.forward(request, reponse);
		
	
	}
}
