


package controll.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.memberdao;
import model.dto.dto;

/**
 * Servlet implementation class signup
 */
@WebServlet("/shoe/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		  String lname = request.getParameter("lname"); 
		  String lid =request.getParameter("lid");
		  String lpw = request.getParameter("lpw"); 
		  String lph = request.getParameter("lph"); 
		  String lemail = request.getParameter("lemail");
		  String lsize = request.getParameter("lsize");
		  System.out.println(lname); 
		  System.out.println(lid);
		 
		
		  dto dto = new dto(0, lname, lid, lpw,lph, lemail , lsize, null);
		  System.out.println(dto.toString());
		  
		  boolean result = memberdao.getInstance().lsignup(dto); 
		  if(result) {
			  response.sendRedirect("/shoesproject/view/login.jsp"); }
		  else {
			  System.out.println("실패"); return; }
		  	  System.out.println(result); 
		  response.setCharacterEncoding("UTF-8");
		  
		 
	
	}

}
