package model.dao;

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
	
}
