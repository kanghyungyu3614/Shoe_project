package controll.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.memberdao;

/**
 * Servlet implementation class login
 */
@WebServlet("/shoe/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

    	
     String lid = request.getParameter("lid");
     String lpw = request.getParameter("lpw");
    
	 int lnum = memberdao.getInstance().getlnum(lid);
	 request.getSession().setAttribute("lnum",lnum );	
     
     int result = memberdao.getInstance().M_login(lid,lpw);
     
     	if(result==1) {
     		HttpSession session = request.getSession();
     		session.setAttribute("lid",lid );
     }
    	 
     
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
