package model.dao;

import java.util.ArrayList;

import model.dto.PregistDto;

public class ListDao extends dao {
	
	private static ListDao dao = new ListDao();
	public static ListDao getInstance() {
		return dao;
	}
	
	public ArrayList<PregistDto> list() {
		String sql = "select * from product";
				
		ArrayList<PregistDto> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				PregistDto dto = new PregistDto(
							rs.getInt(1), rs.getString(2),
							rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getString(6),
							rs.getInt(7), rs.getString(8)				
						);
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
	}
	
}
