package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;

import reservation.dao.ReserDAO;
import reservation.dto.ReserVO;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "member/login.jsp";
		HttpSession session = request.getSession();
		
		if(request.getParameter("username") != null) {
			String userid = request.getParameter("username");
			session.setAttribute("userid", userid);
			url = "main.jsp";
		}
		if (session.getAttribute("loginUser") != null) {
			url = "main.jsp";
		}
		
		if(request.getParameter("userid") != null){
			String userid = request.getParameter("userid");
			if(userid.equals("admin")) {
				url = "admin/adminMain.jsp";
			}
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "member/login.jsp";

		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");

		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.userCheck(userid, pwd);

		if (result == 1) {
			MemberVO mVo = mDao.getMember(userid);
			HttpSession session = request.getSession();
			session.setAttribute("userid", mVo.getUserid());
			session.setAttribute("name", mVo.getName());
			session.setAttribute("pwd", mVo.getPwd());

//			ReserDAO rDAO = ReserDAO.getInstance();
//			ReserVO rVo = rDAO.selectReserCount(userid);
//			session.setAttribute("count", rVo.getCount());
//			rVo = rDAO.selectReserCancelCount(userid);
//			session.setAttribute("cancelcount", rVo.getCancelCount());
			
			url = "main.jsp";
			
			if (userid.equals("admin")) {
				url = "admin/adminMain.jsp";
			}

		} else {
			url = "member/deniedLogin.jsp";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
