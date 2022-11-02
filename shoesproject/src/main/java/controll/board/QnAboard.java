package controll.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.dao.boarddao;

@WebServlet("/shoe/QnAboard")
public class QnAboard extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	private static final long serialVersionUID = 1L;


    public QnAboard() {
        super();}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uploadpath = request.getSession().getServletContext().getRealPath("/upload");

		MultipartRequest multi = new MultipartRequest(
				request , 						
				uploadpath , 					
				1024 * 1024 * 1024, 			
				"UTF-8", 						
				new DefaultFileRenamePolicy() 	
		);

		// 데이터 요청
		String qtitle = multi.getParameter("qtitle");
		System.out.println(qtitle);
		String qcontent = multi.getParameter("qcontent");
		System.out.println(qcontent);
		String qfile = multi.getFilesystemName("qfile");
		System.out.println(qfile);

		// DB처리
		boolean result 
			= boarddao.getInstance().qnawrite(qtitle, qcontent, qfile);
		// 응답
		response.getWriter().print(result);

	}

}