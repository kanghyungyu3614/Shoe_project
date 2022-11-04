package controll.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.dao.PregistDao;

/**
 * Servlet implementation class pregist
 */
@WebServlet("/pregist")
public class pregist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pregist() {
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
		String uploadpath = request.getSession().getServletContext().getRealPath("/pupload"); // 최상위경로의 pupload폴더
		
		System.out.println(uploadpath);
		
		MultipartRequest multi = new MultipartRequest(
					request,		// 요청방식
					uploadpath,		// 저장 경로
					1024 * 1024 * 1024,	// 1MB
					"UTF-8",		// 인코딩
					new DefaultFileRenamePolicy()	// 중복이면 자동이름변경
				);
		
		String pcategory = multi.getParameter("pcategory");
		String pbrand = multi.getParameter("pbrand");
		String pname = multi.getParameter("pname");
		String pcolor = multi.getParameter("pcolor");
		int pprice = Integer.parseInt(multi.getParameter("pprice"));
		String preleaseday = multi.getParameter("preleaseday");
		
		// 첨부파일 경로/이름 호출
		String pimg = multi.getFilesystemName("pimg");
		
		
		boolean result = PregistDao.getInstance().pregist(pcategory, pbrand, pname, pimg, pcolor, pprice, preleaseday);
		
		response.getWriter().print(result);
		
	}

}
