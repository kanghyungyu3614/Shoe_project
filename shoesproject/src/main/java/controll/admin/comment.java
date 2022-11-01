package controll.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.CommentDao;
import model.dto.CommentDto;

@WebServlet("/comment")
public class comment extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public comment() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int rno = Integer.parseInt(request.getParameter("rno"));
		String ctitle = request.getParameter("ctitle");
		String ccontent = request.getParameter("ccontent");
		
		CommentDto dto = new CommentDto(0, ctitle, ccontent, null, rno);
		
		boolean result = CommentDao.getInstance().writrecomment(dto);
		
		response.getWriter().print(result);
		
	}

}
