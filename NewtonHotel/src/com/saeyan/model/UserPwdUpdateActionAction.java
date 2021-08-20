package com.saeyan.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;

public class UserPwdUpdateActionAction implements Action_1 {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		MemberVO mVo = new MemberVO();
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		
		MemberDAO mDao = MemberDAO.getInstance();
		mDao.updatePwdAction(mVo);
		
		new AllUserInfoSelectAction().execute(request, response);

	}
	
}
