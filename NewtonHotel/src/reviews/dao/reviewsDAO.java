package reviews.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import reviews.dto.reviewsVO;
import util.DBManager;

public class reviewsDAO {
	private reviewsDAO() {
	}

	private static reviewsDAO instance = new reviewsDAO();

	public static reviewsDAO getInstance() {
		return instance;
	}

	public List<reviewsVO> reviewsList() {
		String sql = "select num, user_id, password, title, content, readcount " + "from reviews";

		List<reviewsVO> list = new ArrayList<reviewsVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				reviewsVO bVo = new reviewsVO();

				bVo.setNum(rs.getInt("num"));
				bVo.setUser_id(rs.getString("user_id"));
				bVo.setPassword(rs.getString("password"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));

				list.add(bVo);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public List<reviewsVO> reviewsList2() {
		String sql = "select num, user_id, password, title, content, readcount, rank " + "from reviews";

		List<reviewsVO> list = new ArrayList<reviewsVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				reviewsVO bVo = new reviewsVO();

				bVo.setNum(rs.getInt("num"));
				bVo.setUser_id(rs.getString("user_id"));
				bVo.setPassword(rs.getString("password"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setRank(rs.getString("rank"));
				list.add(bVo);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public void insertreviews(reviewsVO pVo) {
		String sql = "insert into reviews(num, user_id, title, content, password, file_name, save_path, rank) values(seq_reviews.nextval, ?, ?, ?, ?, ?, ?, ?)";
//		String sql = "insert into reviews values(seq_reviews.nextval, ?, ?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, pVo.getUser_id());
			pstmt.setString(2, pVo.getTitle());
			pstmt.setString(3, pVo.getContent());
			pstmt.setString(4, pVo.getPassword());
			pstmt.setString(5, pVo.getFile_name());
			pstmt.setString(6, pVo.getSave_path());
			pstmt.setString(7, pVo.getRank());
			
			pstmt.executeUpdate();
			System.out.println(pVo.getUser_id() + " " + pVo.getRank());
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void updateReadcount(String num) {
		String sql = "update reviews set readcount=readcount+1 where num=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);

		}
	}

//게시판 글 상세내용보기
	public reviewsVO selectOnereviewsByNum(int num) {
		String sql = "select * from reviews where num = ?";

		reviewsVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				bVo = new reviewsVO();

				bVo.setNum(rs.getInt("num"));
//				System.out.println("다오 :" + rs.getInt("num"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setUser_id(rs.getString("user_id"));
				bVo.setTitle(rs.getString("title"));
				bVo.setFile_name(rs.getString("file_name"));
				bVo.setSave_path(rs.getString("save_path"));
				bVo.setContent(rs.getString("content"));
				bVo.setPosted(rs.getString("Posted"));
				bVo.setRank(rs.getString("rank"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}

	public void updatereviews(reviewsVO bVo) {
		String sql = "update board set title=?, content=?, password=?, "
				+ "posted=?, content=?, set file_name=?, set save_path=? where num=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt.setString(3, bVo.getTitle());
			pstmt.setString(4, bVo.getContent());
			pstmt.setString(8, bVo.getPosted());
			pstmt.setString(10, bVo.getPassword());
			pstmt.setString(11, bVo.getFile_name());
			pstmt.setString(12, bVo.getSave_path());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public reviewsVO checkreviews(String password, String num) {
		String sql = "select * from reviews where pass =? and num=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		reviewsVO bVo = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, password);
			pstmt.setString(2, num);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				bVo = new reviewsVO();

				bVo.setNum(rs.getInt("num"));
				bVo.setUser_id(rs.getString("user_id"));
				bVo.setPassword(rs.getString("password"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setFile_name(rs.getString("file_name"));
				bVo.setSave_path(rs.getString("save_path"));
				bVo.setPosted(rs.getString("date"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bVo;
	}

	public void deletereviews(String num) {
		String sql = "delete from reviews where num=? ";
		System.out.println(num);

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, num);

			pstmt.executeUpdate();
			System.out.println("쿼리들어감");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

}
