package controll.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.memberdao;


@WebServlet("/shoe/updatemember")
public class updatemember extends HttpServlet {
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String lpw = request.getParameter("lpw");
		String lph = request.getParameter("lph");
		String lemail = request.getParameter("lemail");
		String lsize = request.getParameter("lsize");
		
		boolean result = memberdao.getInstance().updatemember(lpw, lph, lemail, lsize, 0);
		
	}
	private static final long serialVersionUID = 1L;
       

    public updatemember() {
        super();

    }




	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}