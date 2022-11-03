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

import model.dao.CommentDao;
import model.dto.CommentDto;




@WebServlet("/admin/cload")
public class cload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public cload() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rno = Integer.parseInt(request.getParameter("rno"));
		System.out.println(rno);
		ArrayList<CommentDto> list = new CommentDao().getInstance().getboard(rno);
		System.out.println(list);
		JSONArray array = new JSONArray();
		for(int i = 0 ; i<list.size(); i++ ) {
			JSONObject object = new JSONObject();
			object.put("cno" , list.get(i).getCno());
			object.put("ctitle" , list.get(i).getCtitle());
			object.put("ccontent" , list.get(i).getCcontent());
			object.put("cdate" , list.get(i).getCdate());
			object.put("rno" , list.get(i).getRno());
			array.add(object);
		}
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(array);
		System.out.println(rno);
		System.out.println(array);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
