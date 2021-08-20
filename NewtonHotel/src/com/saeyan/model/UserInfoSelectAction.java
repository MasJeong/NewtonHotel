package com.saeyan.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;

public class UserInfoSelectAction implements Action_1 {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/admin/userInfoSelect.jsp";
		String userId = request.getParameter("userId");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.selectUserInfo(userId);
		request.setAttribute("member", mVo);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
