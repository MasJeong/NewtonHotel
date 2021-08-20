package com.saeyan.model;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;

public class AllUserInfoSearchAction implements Action_1 {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/admin/allUserInfoSearch.jsp";
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		
		MemberDAO mDao=MemberDAO.getInstance();
		List<MemberVO> memberList = mDao.getMemberSearchList(keyField, keyWord);
		
		request.setAttribute("memberList", memberList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
}
