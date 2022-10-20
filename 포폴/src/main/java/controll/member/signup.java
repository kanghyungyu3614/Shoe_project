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
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String ad = request.getParameter("ad");
		String ph = request.getParameter("ph");
		String size = request.getParameter("size");
		System.out.println(id);
		System.out.println(pw+1);
		dto dto = new dto(0, name, ad, id, pw, ph, size, null);
		
		System.out.println(dto.toString());
		
		boolean result = memberdao.getInstance().signup(dto);
		if(result) {
			System.out.println("성공");
		}else {
			System.out.println(2);
		}
		System.out.println(result);
		request.setCharacterEncoding("UTF-8");
		response.getWriter().print(result);
	
	}

}
