package controll.product;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.dao.DetailDao;
import model.dao.memberdao;
import model.dto.SpregistDto;
import model.dto.orderinfodetail;

/**
 * Servlet implementation class psession
 */
@WebServlet("/product/psession")
public class psession extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		HttpSession session = request.getSession();
		session.setAttribute("pno", pno );
 		response.getWriter().print(true);
	}
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public psession() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lid = (String)request.getSession().getAttribute("lid");
		int type = Integer.parseInt(request.getParameter("type"));
		ArrayList<orderinfodetail> result = null;
		if(type == 1) {
			System.out.println(type);
			result = memberdao.getInstance().srload(lid);
			System.out.println(result);
		} else if (type == 2) {
			result = memberdao.getInstance().brload(lid);
		}
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
			object.put("pno", result.get(i).getPno());
			object.put("pcategory" , result.get(i).getPcategory());
			object.put("pbrand" , result.get(i).getPbrand());
			object.put("pname" , result.get(i).getPname());
			object.put("pimg" , result.get(i).getPimg());
			object.put("pcolor" , result.get(i).getPcolor());
			object.put("pprice" , result.get(i).getPprice());
			object.put("preleaseday" , result.get(i).getPreleaseday());
			array.add(object);
			
	}
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(array);
	}

}
