package controll.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.dto.RequestDto;

/**
 * Servlet implementation class mypagebns
 */
@WebServlet("/mypagebns")
public class mypagebns extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public mypagebns() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getSession().getAttribute("lnum"));
		int lnum = ((Integer) request.getSession().getAttribute("lnum"));
		ArrayList<RequestDto> list = new ArrayList<>();
		
		JSONArray array = new JSONArray();
		for(int i = 0 ; i<list.size(); i++) {
			JSONObject object = new JSONObject();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
