package com.saeyan.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.MemberDAO;

public class UserInfoDeleteAction implements Action_1 {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid = request.getParameter("userid");
		
		MemberDAO mDao = MemberDAO.getInstance();
		mDao.deleteMember(userid);
		
		new AllUserInfoSelectAction().execute(request, response);
	}
	
}
