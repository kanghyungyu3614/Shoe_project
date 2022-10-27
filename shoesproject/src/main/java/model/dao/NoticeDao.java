package model.dao;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.dto.NoticeDto;

public class NoticeDao extends dao {
	
	private static NoticeDao ndao = new NoticeDao();
	public static NoticeDao getInstance() { return ndao; }
	
	public boolean nwrite(String ntitle, String ncontent) {
		String sql = "insert into notice(ntitle, ncontent) values(?, ?)";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ntitle);
			ps.setString(2, ncontent);
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
		
	}
	
	public ArrayList<NoticeDto> nload() {
		String sql = "select * from notice";
		
		JSONArray array = new JSONArray();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				JSONObject object = new JSONObject();
				object.put("nno", rs.getInt(1));
				object.put("ntitle", rs.getString(2));
				object.put("ncontent", rs.getString(3));
				object.put("ndate", rs.getString(4));
				array.add(object);
			}
			return array;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	public boolean ndelete(int nno) {
		String sql = "delete from notice where nno="+nno;
		
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	
}




















