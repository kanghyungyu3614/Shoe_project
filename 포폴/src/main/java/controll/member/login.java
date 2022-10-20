package controll.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.memberdao;

/**
 * Servlet implementation class login
 */
@WebServlet("/member/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
     String l_id = request.getParameter("l_id");
     String l_pw = request.getParameter("l_pw");
     System.out.println(l_id);
     System.out.println(l_pw);
     
     boolean result = memberdao.getInstance().M_login(l_id,l_pw);
     if(result) {
    	 System.out.println("등록성공");
     }else {
    	 System.out.println("등록실패");
     }
     System.out.println(result);
     response.getWriter().print(result);
    	
   
	}
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
