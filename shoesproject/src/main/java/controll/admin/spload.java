package controll.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.dao.SpregistDao;
import model.dto.SpregistDto;

/**
 * Servlet implementation class spload
 */
@WebServlet("/spload")
public class spload extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		
		ArrayList<SpregistDto> list = SpregistDao.getInstance().spload(pno);

		JSONArray array = new JSONArray();
		for(int i = 0 ; i<list.size() ; i++) {
			JSONObject object = new JSONObject();
						object.put("spno", list.get(i).getSpno());
						object.put("spstatus", list.get(i).getSpstatus());
						object.put("spsize", list.get(i).getSpsize());
						object.put("spendday", list.get(i).getSpendday());
						object.put("spsellid", list.get(i).getSpsellid());
						object.put("spbuyid", list.get(i).getSpbuyid());
						object.put("spprice", list.get(i).getSpprice());
						object.put("pno", list.get(i).getPno());
					array.add(object);
		}
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(array);	
	}
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public spload() {
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
