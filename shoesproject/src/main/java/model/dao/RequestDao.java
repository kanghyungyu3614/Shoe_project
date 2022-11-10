package model.dao;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.dto.NoticeDto;
import model.dto.PregistDto;
import model.dto.RequestDto;

public class RequestDao extends dao {

	private static RequestDao dao = new RequestDao();
	public static RequestDao getInstance() { return dao; }
	
	public boolean request(RequestDto dto) {
		String sql = "insert into request(rpurpose, rdetail, rtitle, rcontent, lnum) values(?, ?, ?, ?, ?)";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getRpurpose());
			ps.setString(2, dto.getRdetail());
			ps.setString(3, dto.getRtitle());
			ps.setString(4, dto.getRcontent());
			ps.setInt(5, dto.getLnum());
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	
	public ArrayList<RequestDto> rload() {
		ArrayList<RequestDto> list = new ArrayList<>();
		String sql = "select * from request order by rno desc limit 6";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				
				RequestDto dto = new RequestDto(						
							rs.getInt(1), rs.getString(2),
							rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getString(6),
							rs.getInt(7)
						);
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public ArrayList<RequestDto> rloadDetail() {
		ArrayList<RequestDto> list = new ArrayList<>();
		String sql = "select * from request order by rno desc";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				
				RequestDto dto = new RequestDto(						
						rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6),
						rs.getInt(7)
						);
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public boolean rdelete(int rno) {
		String sql = "delete from request where rno="+rno;
		
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	// 마이페이지 내가 문의한 게시물 출력
		// lnum을 검색해서 나오는 값을 출력
	public ArrayList<RequestDto> rloadDetailm(int lnum) { 
		String sql = "select * from request where lnum ="+lnum;
//		JSONArray array = new JSONArray();
		ArrayList<RequestDto> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				RequestDto dto = new RequestDto(
						rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6),
						rs.getInt(7));
				list.add(dto);
			}
			return list;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	
}












