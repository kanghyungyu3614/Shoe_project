


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
@WebServlet("/member/signup")
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
		System.out.println(1);
		request.setCharacterEncoding("UTF-8");
		String s_name = request.getParameter("lname");
		String s_id = request.getParameter("lid");
		String s_pw = request.getParameter("lpw");
		String s_email = request.getParameter("lemail");
		String s_ph = request.getParameter("lph");
		String s_size = request.getParameter("lsize");
		System.out.println(s_name);
		System.out.println(s_id);
		dto dto = new dto(0, s_name, s_id, s_pw, s_ph ,s_email, s_size, null);
		System.out.println(dto.toString());
		
		boolean result = memberdao.getInstance().signup(dto);
		if(result) {
			System.out.println("성공");
		}else {
			System.out.println("실패"); return;
		}
		System.out.println(result);
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(result);
	
	}

}
