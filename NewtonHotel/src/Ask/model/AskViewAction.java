package Ask.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Ask.dao.AskDAO;
import Ask.dto.AskVO;

public class AskViewAction implements AskAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/Ask/askView.jsp";

		int num = Integer.parseInt(request.getParameter("num"));
		AskDAO bDao = AskDAO.getInstance();
		System.out.println(num);
		AskVO askView = bDao.selectOneAskByNum(num);
//		bDao.updateReadcount(num);
		request.setAttribute("askView", askView);
		System.out.println("불러오는 곳 : " + askView.getNum());
		System.out.println("불러오는 곳 : " + askView.getTitle());

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
