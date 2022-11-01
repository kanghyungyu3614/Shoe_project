package controll.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.dao.boarddao;
import model.dao.memberdao;
import model.dto.seldto;

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
		
		ArrayList<seldto>list = new boarddao().getsellove();
		
		
		JSONArray a = new JSONArray();
		for (int  i = 0; i <list.size(); i++ ) {
			JSONObject o = new  JSONObject();
			o.put("snum", list.get(i).getSnum());
			o.put("stitle", list.get(i).getStitle());
			o.put("scontent", list.get(i).getScontent());
			o.put("sfile", list.get(i).getSfile());
			o.put("lid", list.get(i).getLid());
			a.add(o);
			System.out.println(o);
			
		}
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(a);
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

	@Override
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	String uploadpath = request.getSession().getServletContext().getRealPath("/supload");
	MultipartRequest multi = new MultipartRequest(
				request,
				uploadpath,
				1024*1024*10,
				"UTF-8" , 					
				new DefaultFileRenamePolicy()
			
			);
	
		
	String title = multi.getParameter("title");
	String content = multi.getParameter("content");
	String file = multi.getFilesystemName("sfile");
	int snum =	Integer.parseInt(multi.getParameter("snum"));
	HttpSession session = request.getSession();
	
	session.setAttribute("snum", snum);
	
	String lid =(String)session.getAttribute("lid");
	System.out.println("잘옴");	
	
	boolean result = boarddao.getInstance().selupdata(title, content, file, snum);
	System.out.println(result);
	response.getWriter().print(result);}

	
	
	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int snum = Integer.parseInt(request.getParameter("snum"));
		System.out.println(snum);
		
//		boolean result = boarddao.getInstance().seldelete(snum);
		
//		response.getWriter().print(result);
	}
	
	}

	
	
	



