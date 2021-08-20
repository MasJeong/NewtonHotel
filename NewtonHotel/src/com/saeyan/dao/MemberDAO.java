package com.saeyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.saeyan.dto.MemberVO;

import util.DBManager;

public class MemberDAO {
	private MemberDAO() {
		
	}
	
	private static MemberDAO instance =new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds =(DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}
	public int userCheck(String userid, String pwd) {
		int result = -1;
		String sql = "select pwd from member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if (rs.getString("pwd")!=null && rs.getString("pwd").equals(pwd)) {
					result=1;
				}else {
					result=0;
				}
			}else {
				result = -1;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt !=null) pstmt.close();
				if(conn !=null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	public MemberVO getMember(String userid) {
		MemberVO mVo = null;
		String sql ="select userid, name, pwd from member where userid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mVo = new MemberVO();
				mVo.setName(rs.getString("name"));
				mVo.setUserid(rs.getString("userid"));
				mVo.setPwd(rs.getString("pwd"));
//				mVo.setEmail(rs.getString("email"));
//				mVo.setPhone(rs.getString("Phone"));
//				mVo.setAdmin(rs.getInt("admin"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs !=null) rs.close();
				if(pstmt !=null) pstmt.close();
				if(conn != null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}
	
	public MemberVO selectPwd(String userid) {
		MemberVO pVo = null;
		String sql ="select pwd from member where userid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pVo = new MemberVO();
				pVo.setPwd(rs.getString("pwd"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs !=null) rs.close();
				if(pstmt !=null) pstmt.close();
				if(conn != null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return pVo;
	}
	
	public int confirmID(String userid) {
		int result = -1;
		String sql = "select userid from member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn= getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userid);
			rs= pstmt.executeQuery();
			if(rs.next()) {
				result=1;
			}else {
				result= -1;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	public int insertMember(MemberVO mVo) {
		int result= -1;
		String sql = "insert into member values(?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getName());
			pstmt.setString(2, mVo.getUserid());
			pstmt.setString(3, mVo.getPwd());
			pstmt.setString(4, mVo.getEmail());
			pstmt.setString(5, mVo.getPhone());
			pstmt.setInt(6, mVo.getAdmin());
			pstmt.setString(7, mVo.getMap());
			
			result = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	public int updateMember(MemberVO mVo) {
		int result= -1;
		String sql = "update member set pwd=? where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getPwd());
			pstmt.setString(2, mVo.getUserid());
			
			result = pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public List<MemberVO> getMemberList() {
		String sql = "SELECT name, userid, pwd, email, phone, map FROM MEMBER "
				+ "WHERE userid NOT IN ('admin') ORDER BY name";

		List<MemberVO> list = new ArrayList<MemberVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				MemberVO mVo = new MemberVO();

				mVo.setName(rs.getString("name"));
				mVo.setUserid(rs.getString("userid"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setEmail(rs.getString("email"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setMap(rs.getString("map"));

				list.add(mVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs !=null) rs.close();
				if(pstmt !=null) pstmt.close();
				if(conn != null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	//관리자-회원조회-검색
		public List<MemberVO> getMemberSearchList(String keyField, String keyWord){   
			List<MemberVO> list = new ArrayList<MemberVO>();
			
			MemberVO mVo = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
	       
	        try{
	            String sql ="select * from member ";
	           
	            if(keyWord != null && !keyWord.equals("") ){
	                sql +="WHERE "+keyField.trim()+" LIKE '%"+keyWord.trim()+"%' order by name";
	            }else{
	                sql +="order by name";
	            }
	            System.out.println(sql);
	            conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
	           
	            while(rs.next()){
	            	mVo = new MemberVO();

					mVo.setName(rs.getString("name"));
					mVo.setUserid(rs.getString("userid"));
					mVo.setPwd(rs.getString("pwd"));
					mVo.setEmail(rs.getString("email"));
					mVo.setPhone(rs.getString("phone"));
					mVo.setMap(rs.getString("map"));

					list.add(mVo);
	            }
	        }catch(Exception e){           
	        	e.printStackTrace();       
	        }finally {
				try {
					if(rs !=null) rs.close();
					if(pstmt !=null) pstmt.close();
					if(conn != null) conn.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
	        return list;
	    } 
		
		//관리자-사용자정보조회-비밀번호 변경
		public MemberVO updatePwdBefore(String userid) {
			MemberVO mVo = null;
			String sql ="select name, userid from member where userid=?";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userid);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					mVo = new MemberVO();
					mVo.setName(rs.getString("name"));
					mVo.setUserid(rs.getString("userid"));
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(rs !=null) rs.close();
					if(pstmt !=null) pstmt.close();
					if(conn != null) conn.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			return mVo;
		}
		
		public int updatePwdAction(MemberVO mVo) {
			int result= -1;
			String sql = "update member set pwd=? where userid=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			try{
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, mVo.getPwd());
				pstmt.setString(2, mVo.getUserid());
				result = pstmt.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if (pstmt != null) pstmt.close();
					if (conn != null) conn.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			return result;
		}
		
		//관리자-사용자개인정보조회-계정삭제
		public void deleteMember(String userid) {
			String sql = "delete from member where userid = ?";

			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);

				pstmt.setString(1, userid);
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//관리자-예약내역-사용자 정보 조회
		public MemberVO selectUserInfo(String userId) {
			String sql = "SELECT * FROM MEMBER WHERE userid=?";

			MemberVO mVo = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userId);
				rs = pstmt.executeQuery();

				if (rs.next()) {
					mVo = new MemberVO();

					mVo.setName(rs.getString("name"));
					mVo.setUserid(rs.getString("userid"));
					mVo.setPwd(rs.getString("pwd"));
					mVo.setEmail(rs.getString("email"));
					mVo.setPhone(rs.getString("phone"));
					mVo.setMap(rs.getString("map"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (pstmt != null) pstmt.close();
					if (conn != null) conn.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			return mVo;
		}
}
