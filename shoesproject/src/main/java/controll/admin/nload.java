package controll.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.NoticeDao;
import model.dto.NoticeDto;

/**
 * Servlet implementation class nload
 */
@WebServlet("/nload")
public class nload extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");

		ArrayList<NoticeDto> array = new ArrayList<>();
		if(type.equals("admin")) {
			array = NoticeDao.getInstance().nload();
		} else if(type.equals("adminDetail")) {
			array = NoticeDao.getInstance().nloadDetail();
		} else if(type.equals("member")) {
			array = NoticeDao.getInstance().nloadDetail();
		}
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(array);
	}
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public nload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
