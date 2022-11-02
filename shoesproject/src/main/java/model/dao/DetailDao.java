package model.dao;

import java.util.ArrayList;

import model.dto.PregistDto;
import model.dto.dto;

public class DetailDao extends dao {
	private static DetailDao dao = new DetailDao();
	public static DetailDao getInstance() { return dao; }
	
	public PregistDto detail(int pno) {
		String sql = "select * from product where pno = "+pno;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();

			if(rs.next()) {
				PregistDto dto = new PregistDto(						
							rs.getInt(1), rs.getString(2),
							rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getInt(6),
							rs.getString(7), rs.getString(8),
							rs.getString(9), rs.getString(10),
							rs.getString(11)
						);
				return dto;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
}
