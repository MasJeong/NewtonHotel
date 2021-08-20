package Ask.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Ask.dao.AskDAO;
import Ask.dto.AskVO;

/**
 * Servlet implementation class ProductWriteServlet
 */
@WebServlet("/AskWrite.do")
public class AskWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AskWriteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("ask/AskWrite.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ServletContext context = getServletContext();
		String path = context.getRealPath("upload");
		String encType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;

		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());

		String user_id = multi.getParameter("user_id");
		String content = multi.getParameter("content");
		String save_path = multi.getParameter("save_path");
//		int num = Integer.parseInt(multi.getParameter("num"));
		String title = multi.getParameter("title");
		String file_name = multi.getFilesystemName("file_name");

		AskVO pVo = new AskVO();

		pVo.setUser_id(user_id);
		pVo.setContent(content);
		
		pVo.setTitle(title);
		pVo.setFile_name(file_name);
		pVo.setSave_path(save_path);

		AskDAO pDao = AskDAO.getInstance();
		pDao.insertAsk(pVo);

		response.sendRedirect("AskServlet?command=ask_list");

//		AskVO bVo = new AskVO();
//		
	}

}
