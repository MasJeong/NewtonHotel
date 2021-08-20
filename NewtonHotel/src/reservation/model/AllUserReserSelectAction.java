package reservation.model;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.dao.ReserDAO;
import reservation.dto.ReserVO;

public class AllUserReserSelectAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/admin/allUserReserSelect.jsp";
		
		ReserDAO rDao=ReserDAO.getInstance();
		
		int pageNumber = 1;	//기본 1페이지
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
		
		List<ReserVO> reserList = rDao.getList(pageNumber);
		request.setAttribute("page", pageNumber);
		request.setAttribute("reserList", reserList);
		
		
//		ReserVO rVo = rDao.selectReserInfo();
//
//		try {
//			String str1 = rVo.getReservation_in();
//			String str2 = rVo.getReservation_out();
//
//			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//			Date date1 = format.parse(str1);
//			Date date2 = format.parse(str2);
//
//			request.setAttribute("reservation_in", date1);
//			request.setAttribute("reservation_out", date2);
//
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
