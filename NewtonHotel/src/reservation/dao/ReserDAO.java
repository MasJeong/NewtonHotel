package reservation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import reservation.dto.ReserVO;
import util.DBManager;

public class ReserDAO {
	private ReserDAO() {

	}

	private static ReserDAO instance = new ReserDAO();

	public static ReserDAO getInstance() {
		return instance;
	}

	// 관리자 페이지에서 예약내역 목록 가져오는 용도로 사용하자.
//	public ReserVO selectReserCheck(String userid) {
//		String sql = "select * from board where userid = ?";
//		// reservation_number 컬럼 아직 추가 안함
//		ReserVO rVo = null;
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//			conn = DBManager.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			rs = pstmt.executeQuery();
//
//			if (rs.next()) {
//				rVo = new ReserVO();
//
//				rVo.setUserId(rs.getString("userId"));
//				rVo.setUserName(rs.getString("userName"));
//				rVo.setHotelName(rs.getString("hotelName"));
//				rVo.setReservation_in(rs.getString("reservation_in"));
//				rVo.setReservation_out(rs.getString("reservation_out"));
//				rVo.setRoomType(rs.getString("roomType"));
//				rVo.setPrice(rs.getInt("price"));
//				rVo.setAdult(rs.getInt("adult"));
//				rVo.setChild(rs.getInt("child"));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			DBManager.close(conn, pstmt, rs);
//		}
//		return rVo;
//	}

	// 예약 추가
	public void insertReser(ReserVO rVo) {
		String sql = "insert into reservation_select("
				+ "reserId, reservation_number, userId, userName, hotelName, reservation_in, reservation_out, roomType, price, adult, child) "
				+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, rVo.getReserId());
			pstmt.setString(2, rVo.getReservation_number());
			pstmt.setString(3, rVo.getUserId());
			pstmt.setString(4, rVo.getUserName());
			pstmt.setString(5, rVo.getHotelName());
			pstmt.setString(6, rVo.getReservation_in());
			pstmt.setString(7, rVo.getReservation_out());
			pstmt.setString(8, rVo.getRoomType());
			pstmt.setInt(9, rVo.getPrice());
			pstmt.setInt(10, rVo.getAdult());
			pstmt.setInt(11, rVo.getChild());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 마이페이지 -> 예약 조회 (회원의 마지막 예약내역 조회)
	public ReserVO reserSelect(String userId) {
		String sql = "SELECT * FROM(SELECT * FROM reservation_select ORDER BY reservation_number DESC) WHERE rownum = 1 AND switch = 1 AND  userid=?";

		ReserVO rVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				rVo = new ReserVO();

				rVo.setReservation_number(rs.getString("reservation_number"));
				rVo.setUserName(rs.getString("userName"));
				rVo.setUserId(rs.getString("userId"));
				rVo.setHotelName(rs.getString("hotelName"));
				rVo.setReservation_in(rs.getString("reservation_in"));
				rVo.setReservation_out(rs.getString("reservation_out"));
				rVo.setRoomType(rs.getString("roomType"));
				rVo.setPrice(rs.getInt("price"));
				rVo.setAdult(rs.getInt("adult"));
				rVo.setChild(rs.getInt("child"));
//				rVo.setSwitch_num(rs.getInt("switch_num"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return rVo;
	}

	// 예약 후 예약내역 조회
	public ReserVO selectReserInfo() {
//		String sql = "SELECT * FROM(SELECT * FROM reservation_select ORDER BY ROWNUM DESC) WHERE rownum = 1";
		String sql = "SELECT * FROM RESERVATION_SELECT WHERE reservation_number =(SELECT max(RESERVATION_NUMBER) FROM RESERVATION_SELECT)";
		ReserVO rVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				rVo = new ReserVO();

				rVo.setReservation_number(rs.getString("reservation_number"));
				rVo.setUserName(rs.getString("userName"));
				rVo.setUserId(rs.getString("userId"));
				rVo.setHotelName(rs.getString("hotelName"));
				rVo.setReservation_in(rs.getString("reservation_in"));
				rVo.setReservation_out(rs.getString("reservation_out"));
				rVo.setRoomType(rs.getString("roomType"));
				rVo.setPrice(rs.getInt("price"));
				rVo.setAdult(rs.getInt("adult"));
				rVo.setChild(rs.getInt("child"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return rVo;
	}

	// 방 종류에 따라 가격 가져오기
	public ReserVO roomSelect(String roomSelect) {
		// reservation_number(예약번호) 이걸로 매개변수 받고, 조회
		String sql = "select price from roomInfo where roomType = ?";

		ReserVO rVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, roomSelect);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rVo = new ReserVO();

				rVo.setPrice(rs.getInt("price"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return rVo;
	}

	// 예약번호 중 최대값 찾아오기, reserId중 가장 큰 값도 동시에
	public ReserVO selectMaxReserNum() {
		String sql = "SELECT reserId, reservation_number FROM RESERVATION_SELECT WHERE reservation_number = (SELECT max(RESERVATION_NUMBER) FROM RESERVATION_SELECT)";

		ReserVO rVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				rVo = new ReserVO();
				rVo.setReserId(rs.getInt("reserId"));
				rVo.setReservation_number(rs.getString("reservation_number"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return rVo;
	}

	// switch 컬럼 0으로 변경하기(예약취소된 것)
	public void updateSwitchNum(ReserVO rVo) {
		String sql = "UPDATE RESERVATION_SELECT SET switch = 0 WHERE RESERVATION_NUMBER = ?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, rVo.getReservation_number());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 마이페이지 -> 예약내역 카운트
	public ReserVO selectReserCount(String userId) {
		String sql = "SELECT count(*) FROM RESERVATION_SELECT WHERE userid= ? AND switch = 1";

		ReserVO rVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				rVo = new ReserVO();

				rVo.setCount(rs.getInt("count(*)"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return rVo;
	}

	// 마이페이지 -> 예약취소내역 카운트
	public ReserVO selectReserCancelCount(String userId) {
		String sql = "SELECT count(*) FROM RESERVATION_SELECT WHERE userid= ? AND switch = 0";

		ReserVO rVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				rVo = new ReserVO();

				rVo.setCancelCount(rs.getInt("count(*)"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return rVo;
	}
	
	public List<ReserVO> getList(int pageNumber) {
		String sql = "SELECT * FROM "
				+ "(SELECT * FROM RESERVATION_SELECT ORDER BY reserId DESC) "
				+ "WHERE reserId < ? AND rownum <= 10";
		List<ReserVO> list = new ArrayList<ReserVO>();
		
		ReserVO rVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				rVo = new ReserVO();
				
				rVo.setReserId(rs.getInt("reserId"));
				rVo.setReservation_number(rs.getString("reservation_number"));
				rVo.setUserName(rs.getString("userName"));
				rVo.setUserId(rs.getString("userId"));
				rVo.setHotelName(rs.getString("hotelName"));
				rVo.setReservation_in(rs.getString("reservation_in"));
				rVo.setReservation_out(rs.getString("reservation_out"));
				rVo.setRoomType(rs.getString("roomType"));
				rVo.setPrice(rs.getInt("price"));
				rVo.setAdult(rs.getInt("adult"));
				rVo.setChild(rs.getInt("child"));
				rVo.setSwitch_num(rs.getInt("switch"));
				
				list.add(rVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	//다음으로 작성될 게시글 번호 가져오기
	public int getNext() {
		String sql = "SELECT reserId FROM reservation_select ORDER BY reserId DESC";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return -1;
	}
	
	
	//10개 게시물체크
	public boolean nextPage(int pageNumber) { 
		String sql = "SELECT * FROM "
				+ "(SELECT * FROM RESERVATION_SELECT ORDER BY reserId DESC) "
				+ "WHERE reserId < ? AND rownum <= 10";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return false;
	}
	
	//관리자-예약내역-검색
	public List<ReserVO> getSearchList(String keyField, String keyWord){   
		List<ReserVO> list = new ArrayList<ReserVO>();
		
		ReserVO rVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
       
        try{
            String sql ="select * from reservation_select ";
           
            if(keyWord != null && !keyWord.equals("") ){
                sql +="WHERE "+keyField.trim()+" LIKE '%"+keyWord.trim()+"%' order by reserId desc";
            }else{//모든 레코드 검색
                sql +="order by reserId desc";
            }
            System.out.println(sql);
            conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
           
            while(rs.next()){
            	rVo = new ReserVO();
				
				rVo.setReserId(rs.getInt("reserId"));
				rVo.setReservation_number(rs.getString("reservation_number"));
				rVo.setUserName(rs.getString("userName"));
				rVo.setUserId(rs.getString("userId"));
				rVo.setHotelName(rs.getString("hotelName"));
				rVo.setReservation_in(rs.getString("reservation_in"));
				rVo.setReservation_out(rs.getString("reservation_out"));
				rVo.setRoomType(rs.getString("roomType"));
				rVo.setPrice(rs.getInt("price"));
				rVo.setAdult(rs.getInt("adult"));
				rVo.setChild(rs.getInt("child"));
				rVo.setSwitch_num(rs.getInt("switch"));
				
				list.add(rVo);
            }
        }catch(Exception e){           
        	e.printStackTrace();       
        }finally {
			DBManager.close(conn, pstmt, rs);
		}   
        return list;
    }  
	
}
