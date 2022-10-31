package controll.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import model.dao.RequestDao;
import model.dao.memberdao;
import model.dto.RequestDto;

/**
 * Servlet implementation class request
 */
@WebServlet("/request")
public class request extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public request() {
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
		request.setCharacterEncoding("UTF-8");
		
		int lnum = (Integer)request.getSession().getAttribute("lnum");
		String rpurpose = request.getParameter("rpurpose");
		String rdetail = request.getParameter("rdetail");
		String rtitle = request.getParameter("rtitle");
		String rcontent = request.getParameter("rcontent");
		
		RequestDto dto = new RequestDto(0, rpurpose, rdetail, rtitle, rcontent, null, lnum);
		
		boolean result = RequestDao.getInstance().request(dto);
		
		response.getWriter().print(result);
	}

}
