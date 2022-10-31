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

import model.dao.PregistDao;
import model.dao.RequestDao;
import model.dto.PregistDto;
import model.dto.RequestDto;

/**
 * Servlet implementation class rload
 */
@WebServlet("/rload")
public class rload extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		
		ArrayList<RequestDto> list = new ArrayList<>();
		
		if(type.equals("admin")) {
			list = RequestDao.getInstance().rload();
		} else if(type.equals("adminDetail")) {
			list = RequestDao.getInstance().rloadDetail();
		}
		
		JSONArray array = new JSONArray();
		for(int i = 0 ; i<list.size() ; i++) {
			JSONObject object = new JSONObject();
			object.put("rno", list.get(i).getRno());
			object.put("rpurpose", list.get(i).getRpurpose());
			object.put("rdetail", list.get(i).getRdetail());
			object.put("rtitle", list.get(i).getRtitle());
			object.put("rcontent", list.get(i).getRcontent());
			object.put("rdate", list.get(i).getRdate());
			object.put("lnum", list.get(i).getLnum());
			array.add(object);
		}
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(array);
	}
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rload() {
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
