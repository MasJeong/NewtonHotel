package Ask.model;

import java.io.IOException;
import java.util.List;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Ask.dao.AskDAO;
import Ask.dto.AskVO;


public class AskListAction implements AskAction{
	
@Override
public void execute(HttpServletRequest request, HttpServletResponse reponse)
		throws ServletException, IOException {
	String url = "/Ask/askList.jsp";
	
	AskDAO bDao=AskDAO.getInstance();
    List<AskVO> askList = bDao.AskList();
    
	request.setAttribute("askList", askList);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	dispatcher.forward(request, reponse);
}
}
