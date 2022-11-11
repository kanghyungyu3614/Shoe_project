package controll.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import model.dao.memberdao;
import model.dto.dto;

/**
 * Servlet implementation class mypage
 */
@WebServlet("/shoe/mypage")
public class mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mypage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lid = (String)request.getSession().getAttribute("lid");
		System.out.println(lid);
		dto dto = memberdao.getInstance().getpage(lid);
		
		JSONObject object= new JSONObject();
			object.put("lnum", dto.getLnum());
			object.put("lday", dto.getLday());
			object.put("lname", dto.getLname());
			object.put("lid", dto.getLid());
			object.put("lpw", dto.getLpw());
			object.put("lph", dto.getLph());
			object.put("lemail", dto.getLemail());
			object.put("lsize", dto.getLsize());
			
			
			
			
			System.out.println(object);
			response.setCharacterEncoding("UTF-8");	
			response.getWriter().print(object);
			
			
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lpw = request.getParameter("dele");
		System.out.println(lpw);
		String lid = (String)request.getSession().getAttribute("lid");
		
		boolean re = memberdao.getInstance().memberdelete(lid,lpw);
		response.getWriter().print(re);
	}
	
	@Override
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		int lnum = Integer.parseInt(request.getParameter("lnum"));
		String upinp = request.getParameter("upinp");
		
		System.out.println(lnum + upinp);
		
		boolean result = memberdao.getInstance().reinsert(lnum , upinp);
		
		response.getWriter().print(result);
				
				
	}

}
