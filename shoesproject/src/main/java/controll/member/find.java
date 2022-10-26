package controll.member;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.dao;
import model.dao.memberdao;

/**
 * Servlet implementation class lsignup
 */
@WebServlet("/shoe/find")
public class find extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public find() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String findname = request.getParameter("findname");
		String findph = request.getParameter("findph");
		
		String result = memberdao.getInstance().findid(findname,findph);
		
		response.getWriter().print(result);
		System.out.println(result);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String findid = request.getParameter("findid");
		String sname = request.getParameter("sname");
		String sph = request.getParameter("sph");
		
		boolean result = memberdao.getInstance().findpw(findid,sname,sph);
			String rand ="";
			if(result) {
				Random random = new Random();
				for(int i = 0; i<=12; i++) {
					rand +=  (char)(random.nextInt(26)+97);
					
				}
				memberdao.getInstance().pwch(findid,rand);
			}
			response.getWriter().print(rand);
	}

}
