package com.saeyan.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;

public class UserPwdUpdateAction implements Action_1 {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "admin/userPwdUpdate.jsp";
		String userid = request.getParameter("ch");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.updatePwdBefore(userid);
		request.setAttribute("memberInfo", mVo);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
}
