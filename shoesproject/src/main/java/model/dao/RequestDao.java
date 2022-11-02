package model.dao;

import java.util.ArrayList;

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
}












