package reservation.model;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.dao.ReserDAO;
import reservation.dto.ReserVO;

public class ReserInfoAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/reservations/reserInfo.jsp";
		
		ReserDAO rDao = ReserDAO.getInstance();
		ReserVO rVo = rDao.selectReserInfo();

		request.setAttribute("reserInfo", rVo);

		try {
			String str1 = rVo.getReservation_in();
			String str2 = rVo.getReservation_out();

			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date1 = format.parse(str1);
			Date date2 = format.parse(str2);

			request.setAttribute("reservation_in", date1);
			request.setAttribute("reservation_out", date2);

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}
}
