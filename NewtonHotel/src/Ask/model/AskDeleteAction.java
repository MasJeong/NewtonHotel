package Ask.model;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Ask.dao.AskDAO;
import Ask.dto.AskVO;

public class AskDeleteAction implements AskAction {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");

		AskDAO bDao = AskDAO.getInstance();
		bDao.deleteAsk(num);
		String url = "/Ask/askList.jsp";

		List<AskVO> askList = bDao.AskList();

		request.setAttribute("askList", askList);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
//		new AskListAction().execute(request,response);

	}

}
