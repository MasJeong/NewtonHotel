package Ask.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Ask.dto.AskVO;
import util.DBManager;

public class AskDAO {
	private AskDAO() {
	}

	private static AskDAO instance = new AskDAO();

	public static AskDAO getInstance() {
		return instance;
	}

	public List<AskVO> AskList() {
		String sql = "select num, user_id, password, title, content, readcount " + "from ask";

		List<AskVO> list = new ArrayList<AskVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				AskVO bVo = new AskVO();

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

	public List<AskVO> AskList2() {
		String sql = "select num, user_id, password, title, content, readcount " + "from ask";

		List<AskVO> list = new ArrayList<AskVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				AskVO bVo = new AskVO();

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

	public void insertAsk(AskVO bVo) {
		String sql = "insert into ask(num, user_id, title, content, password, file_name, save_path) values(seq_ask.nextval, ?, ?, ?, ?, ?, ?)";
//		String sql = "insert into ask values(seq_ask.nextval, ?, ?, ?, ?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, bVo.getUser_id());
			pstmt.setString(2, bVo.getTitle());
			pstmt.setString(3, bVo.getContent());
			pstmt.setString(4, bVo.getPassword());
			pstmt.setString(5, bVo.getFile_name());
			pstmt.setString(6, bVo.getSave_path());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
			;
		}
	}

	public void updateReadcount(String num) {
		String sql = "update ask set readcount=readcount+1 where num=?";

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
	public AskVO selectOneAskByNum(int num) {
		String sql = "select * from ask where num = ?";

		AskVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				bVo = new AskVO();

				bVo.setNum(rs.getInt("num"));
//				System.out.println("다오 :" + rs.getInt("num"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setUser_id(rs.getString("user_id"));
				bVo.setTitle(rs.getString("title"));
				bVo.setFile_name(rs.getString("file_name"));
				bVo.setSave_path(rs.getString("save_path"));
				bVo.setContent(rs.getString("content"));
				bVo.setPosted(rs.getString("Posted"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}

	public void updateAsk(AskVO bVo) {
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

	public AskVO checkAsk(String password, String num) {
		String sql = "select * from ask where pass =? and num=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		AskVO bVo = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, password);
			pstmt.setString(2, num);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				bVo = new AskVO();

				bVo.setNum(rs.getInt("num"));
				bVo.setUser_id(rs.getString("user_id"));
				bVo.setPassword(rs.getString("password"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setFile_name(rs.getString("file_name"));
				bVo.setSave_path(rs.getString("save_path"));
				bVo.setPosted(rs.getString("date"));
				bVo.setComments(rs.getString("comments"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bVo;
	}

	public void deleteAsk(String num) {
		String sql = "delete from ask where num=? ";
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
