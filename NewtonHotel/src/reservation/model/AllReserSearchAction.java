package reservation.model;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reservation.dao.ReserDAO;
import reservation.dto.ReserVO;

public class AllReserSearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/admin/allUserReserSearch.jsp";
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		
		ReserDAO rDao=ReserDAO.getInstance();
		List<ReserVO> reserList = rDao.getSearchList(keyField, keyWord);
		
		request.setAttribute("reserList", reserList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
