package model.dao;

import java.util.ArrayList;

import model.dto.SpregistDto;

public class SpregistDao extends dao {

	private static SpregistDao dao = new SpregistDao();
	public static SpregistDao getInstance() { return dao; }
	
	public ArrayList<SpregistDto> spload(int pno) {
		ArrayList<SpregistDto> list = new ArrayList<>();
		String sql = "select * from sproduct where pno = " + pno;
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				SpregistDto dto = new SpregistDto(
							rs.getInt(1), rs.getString(2),
							rs.getInt(3), rs.getString(4),
							rs.getString(5), rs.getString(6),
							rs.getInt(7), rs.getInt(8)
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
