package controll.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import model.dao.DetailDao;
import model.dto.PregistDto;

/**
 * Servlet implementation class detail
 */
@WebServlet("/product/detail")
public class detail extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Object pvalue = request.getSession().getAttribute("pno");
		int pno = 0;
		if(pvalue == null) { // int는 null값을 체크 못하니까 세션을 객체로 변환해서 null을 체크한다.
			response.sendRedirect("mainhome.jsp");
		}else {
			pno = (Integer)pvalue;
		}
		
		PregistDto dto = DetailDao.getInstance().detail(pno);
		
		JSONObject object = new JSONObject();
		
		object.put("pno", dto.getPno());
		object.put("ppurpose", dto.getPpurpose());
		object.put("pcategory", dto.getPcategory());
		object.put("pbrand", dto.getPbrand());
		object.put("psize", dto.getPsize());
		object.put("pprice", dto.getPprice());
		object.put("ptitle", dto.getPtitle());
		object.put("pcontent", dto.getPcontent());
		object.put("pdate", dto.getPdate());
		object.put("pimg", dto.getPimg());
		object.put("pstatus", dto.getPstatus());
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(object);
		
	}
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public detail() {
        
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
