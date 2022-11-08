package controll.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import model.dao.DetailDao;
import model.dao.memberdao;
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
		object.put("pcategory", dto.getPcategory());
		object.put("pbrand", dto.getPbrand());
		object.put("pname", dto.getPname());
		object.put("pimg", dto.getPimg());
		object.put("pcolor", dto.getPcolor());
		object.put("pprice", dto.getPprice());
		object.put("preleaseday", dto.getPreleaseday());
		
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
		
		
		int hideNum = Integer.parseInt(request.getParameter("hideNum"));
		int selprice = Integer.parseInt(request.getParameter("selprice")); 
		String lid = (String)request.getSession().getAttribute("lid");
		int type = Integer.parseInt(request.getParameter("type"));
		System.out.println(lid);
		System.out.println(hideNum+","+selprice);	
		
		if(type==1) {
		boolean result = DetailDao.getInstance().selin(hideNum,selprice,lid);
		response.getWriter().print(result);
		}
		else if(type==2) {
			boolean result = DetailDao.getInstance().selbuy(hideNum,selprice,lid);
			response.getWriter().print(result);
		}
		 /*
		 * else if(type==2) { boolean result =
		 * DetailDao.getInstance().selin(hideNum,selprice,lid); }
		 */
	}

}