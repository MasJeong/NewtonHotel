package reservation.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.dao.ReserDAO;
import reservation.dto.ReserVO;

public class RoomSelectAction implements Action1 {

	@Override
	public String exe(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String roomSelect = request.getParameter("roomType");

		ReserDAO rDao = ReserDAO.getInstance();
		ReserVO rVo = rDao.roomSelect(roomSelect);
		String rVoPrice = Integer.toString(rVo.getPrice());
		return rVoPrice;
	}

	
	
	
}
