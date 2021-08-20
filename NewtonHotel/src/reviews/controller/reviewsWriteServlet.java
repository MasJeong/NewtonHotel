package reviews.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import reviews.dao.reviewsDAO;
import reviews.dto.reviewsVO;

/**
 * Servlet implementation class ProductWriteServlet
 */
@WebServlet("/reviewsWrite.do")
public class reviewsWriteServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public reviewsWriteServlet() {
      super();
      // TODO Auto-generated constructor stub
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
    *      response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      RequestDispatcher dispatcher = request.getRequestDispatcher("reviews/reviewsWrite.jsp");
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
      int sizeLimit = 20 * 1024 * 1024;

      MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());

      String user_id = multi.getParameter("user_id");
//      String rank = multi.getParameter("rank");
      String content = multi.getParameter("content");
      String save_path = multi.getParameter("save_path");
//      int num = Integer.parseInt(multi.getParameter("num"));
      String title = multi.getParameter("title");
      String file_name = multi.getFilesystemName("file_name");

//      Enumeration params = multi.getParameterNames(); 
//      String rankTest ="";
//      
//      while(params.hasMoreElements()) {        
//            String name = (String)params.nextElement();        
//            String value = multi.getParameter( name );        
//
//            System.out.println("name=" + name + " " +  "value=" + value );
//            if(name.equals("rank")) {
//            	rankTest = name;
//            }
//      }

      reviewsVO pVo = new reviewsVO();

      pVo.setContent(content);
      pVo.setTitle(title);
      pVo.setFile_name(file_name);
      pVo.setSave_path(save_path);
      pVo.setRank(multi.getParameter("rank"));
//      pVo.setRank(rankTest);

      reviewsDAO pDao = reviewsDAO.getInstance();
      pDao.insertreviews(pVo);

//      response.sendRedirect("reviewsList.do");
      
      response.sendRedirect("reviewsServlet?command=reviews_list");
//      reviewsVO bVo = new reviewsVO();

   }

}