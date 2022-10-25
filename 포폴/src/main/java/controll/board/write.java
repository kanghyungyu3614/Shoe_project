package controll.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.dao.boarddao;
import model.dao.memberdao;

/**
 * Servlet implementation class write
 */
@WebServlet("/board/write")
public class write extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public write() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uploadpath = request.getSession().getServletContext().getRealPath("/supload");
		MultipartRequest multi = new MultipartRequest(
					request,
					uploadpath,
					1024*1024*10,
					"UTF-8" , 					
					new DefaultFileRenamePolicy()
				
				);
		
		String lid = multi.getParameter("lid");
		
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String file = multi.getFilesystemName("sfile");
		int lnum = memberdao.getInstance().getlnum(lid);
		
		boolean result = boarddao.getInstance().sdraw(title, content, file, lnum);
		System.out.println(result);
		response.getWriter().print(result);}

}
