package reservation.model;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.dao.ReserDAO;
import reservation.dto.ReserVO;

public class ReserWriteAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ReserDAO rDao = ReserDAO.getInstance();
		ReserVO rVo = rDao.selectMaxReserNum();

		int count = Integer.parseInt(rVo.getReservation_number().substring(8, 13));
		
		Calendar cal = Calendar.getInstance();
		String year = Integer.toString(cal.get(Calendar.YEAR));
		
		if(request.getParameter("hotelName").equals("서울뉴튼호텔")) {
			rVo.setReservation_number(year + "-01-" + ++count);
		} else if(request.getParameter("hotelName").equals("제주뉴튼호텔")) {
			rVo.setReservation_number(year + "-01-" + ++count);
		} else if(request.getParameter("hotelName").equals("도쿄뉴튼호텔")) {
			rVo.setReservation_number(year + "-01-" + ++count);
		} else {
			rVo.setReservation_number(year + "-00-" + ++count);
		}
		
		int reserId = rVo.getReserId() + 1;
		rVo.setReserId(reserId);
		rVo.setUserId(request.getParameter("userid"));
		rVo.setUserName(request.getParameter("userName"));
		rVo.setHotelName(request.getParameter("hotelName"));
		rVo.setReservation_in(request.getParameter("reservation_in"));
		rVo.setReservation_out(request.getParameter("reservation_out"));
		rVo.setRoomType(request.getParameter("roomType"));
		rVo.setPrice(Integer.parseInt(request.getParameter("price")));
		rVo.setAdult(Integer.parseInt(request.getParameter("adult")));
		rVo.setChild(Integer.parseInt(request.getParameter("child")));

		rDao.insertReser(rVo);
		
		new ReserInfoAction().execute(request, response);
	}

}
