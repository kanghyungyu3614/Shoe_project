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
		request.setCharacterEncoding("UTF-8");
		String uploadpath = request.getSession().getServletContext().getRealPath("/supload");
		MultipartRequest multi = new MultipartRequest(
					request,
					uploadpath,
					1024*1024*10,
					"UTF-8" , 					
					new DefaultFileRenamePolicy()
				
				);
		
		String lid = request.getParameter("lid");
		int lnum = memberdao.getInstance().getlnum(lid);
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String file = multi.getFilesystemName("sfile");
		System.out.println(lid + title + content+lnum+file);
		System.out.println(file);
		boolean result = boarddao.getInstance().sdraw(lid,lnum,title,content,file);
		System.out.println(result);
		response.getWriter().print(result);}

}
