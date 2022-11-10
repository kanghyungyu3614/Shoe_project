package controll.product;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import controll.main.request;
import model.dao.DetailDao;
import model.dao.memberdao;
import model.dto.PregistDto;
import model.dto.SpregistDto;
import model.dto.dto;

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
		String lid = (String)request.getSession().getAttribute("lid");
		int type = Integer.parseInt(request.getParameter("type"));
		int pno = Integer.parseInt(request.getParameter("pno")); //
		System.out.println(lid);
			
		System.out.println(pno);
		if(type==1) {
			int selprice = Integer.parseInt(request.getParameter("selprice")); 
		boolean result = DetailDao.getInstance().selin(hideNum,selprice,lid);
		response.getWriter().print(result);
		}
		else if(type==2) {
			int selprice = Integer.parseInt(request.getParameter("selprice")); 
			boolean result = DetailDao.getInstance().selbuy(hideNum,selprice,lid);
			response.getWriter().print(result);
		}else if (type==3) { // 판매자 사이즈 리스트 (구매 입찰 올려놓은 사람의 리스트를 보여줌)
	
			ArrayList<SpregistDto> result = DetailDao.getInstance().selllist(hideNum , pno);
			System.out.println(result);
			System.out.println(hideNum);
			System.out.println(pno);
			JSONArray array = new JSONArray();
			for(int i = 0 ; i<result.size(); i++) {
				JSONObject object = new JSONObject();
				object.put("spno" , result.get(i).getSpno());
				object.put("spstatus" , result.get(i).getSpstatus());
				object.put("spsize" , result.get(i).getSpsize());
				object.put("spendday" , result.get(i).getSpendday());
				object.put("spsellid" , result.get(i).getSpsellid());
				object.put("spbuyid" , result.get(i).getSpbuyid());
				object.put("spprice" , result.get(i).getSpprice());
				object.put("pno" , result.get(i).getPno());
				array.add(object);
				
				System.out.println(object);
			}
			System.out.println(array);
			response.setCharacterEncoding("UTF-8");
			response.getWriter().print(array);
			
		}
		else if (type==4) { // 판매자 사이즈 리스트 (구매 입찰 올려놓은 사람의 리스트를 보여줌)
			
			ArrayList<SpregistDto> result = DetailDao.getInstance().buylist(hideNum , pno);
			System.out.println(result);
			System.out.println(hideNum);
			System.out.println(pno);
			JSONArray array = new JSONArray();
			for(int i = 0 ; i<result.size(); i++) {
				JSONObject object = new JSONObject();
				object.put("spno" , result.get(i).getSpno());
				object.put("spstatus" , result.get(i).getSpstatus());
				object.put("spsize" , result.get(i).getSpsize());
				object.put("spendday" , result.get(i).getSpendday());
				object.put("spsellid" , result.get(i).getSpsellid());
				object.put("spbuyid" , result.get(i).getSpbuyid());
				object.put("spprice" , result.get(i).getSpprice());
				object.put("pno" , result.get(i).getPno());
				array.add(object);
				
				System.out.println(object);
			}
			System.out.println(array);
			response.setCharacterEncoding("UTF-8");
			response.getWriter().print(array);
			
		}
		
	}
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	}

}