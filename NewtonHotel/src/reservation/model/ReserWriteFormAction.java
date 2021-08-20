package reservation.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReserWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/reservations/reserForm.jsp";

		if (request.getParameter("roomType") != null) {
			String roomType = request.getParameter("roomType");
			int roomNum = 0;

			if (roomType.equals("sweet")) {
				roomNum = 1;
			} else if (roomType.equals("deluxe")) {
				roomNum = 2;
			} else if (roomType.equals("standard")) {
				roomNum = 3;
			}
			request.setAttribute("roomNum", roomNum);
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
