package reservation.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.dao.ReserDAO;
import reservation.dto.ReserVO;

public class ReserCancleFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//DB에서 switch 컬럼 0으로.
		String userid = request.getParameter("userid");
		String url = "MemberServlet?command=mypage_action&userid=" + userid;
		
		ReserVO rVo = new ReserVO();	
		rVo.setReservation_number(request.getParameter("reservation_number"));
		
		ReserDAO rDao = ReserDAO.getInstance();
		rDao.updateSwitchNum(rVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
}
