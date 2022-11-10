package model.dao;

import java.util.ArrayList;

import model.dto.PregistDto;
import model.dto.SpregistDto;
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
							rs.getString(5), rs.getString(6),
							rs.getInt(7), rs.getString(8)
						);
				return dto;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	
	public boolean selin(int hideNum , int selprice, String lid) {
		//String spstatus ="판매입찰";
		String sql = "insert into sproduct(spstatus,spsize,spsellid,spprice) values ('판매입찰',?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, hideNum);
			ps.setInt(3, selprice);
			ps.setString(2, lid);
			ps.executeUpdate();
			
			return true;	
		} catch (Exception e) {
			System.out.println(e);
		}return false;
	}
	
	public boolean selbuy(int hideNum , int selprice, String lid) {
		String sql = "insert into sproduct(spstatus,spsize,spbuyid,spprice) values ('구매입찰',?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, hideNum);
			ps.setInt(3, selprice);
			ps.setString(2, lid);
			ps.executeUpdate();
			
			return true;	
		} catch (Exception e) {
			System.out.println(e);
		}return false;
	}
	
	
	public ArrayList<SpregistDto>selllist(int hideNum ,int pno){
		 ArrayList<SpregistDto>list = new ArrayList<>();
		 
		String sql = "select * from sproduct where spstatus = '구매입찰' and spsize = ? and pno = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, hideNum);
			ps.setInt(2, pno);
			rs = ps.executeQuery();
			System.out.println("22");
			while(rs.next()) {	
				SpregistDto dto = new SpregistDto(rs.getInt(1),rs.getString(2),
						rs.getInt(3),rs.getString(4),rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8));
				list.add(dto);
				System.out.println(list+"ddd");
				System.out.println(dto+"dd22");
				
			}return list;
			
		} catch (Exception e) {
			System.out.println(e+"11");
		}
		System.out.println("33");
		return list;
	}
	public ArrayList<SpregistDto>buylist(int hideNum ,int pno){
		 ArrayList<SpregistDto>list = new ArrayList<>();
		 
		String sql = "select * from sproduct where spstatus = '판매입찰' and spsize = ? and pno = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, hideNum);
			ps.setInt(2, pno);
			rs = ps.executeQuery();
			System.out.println("22");
			while(rs.next()) {	
				SpregistDto dto = new SpregistDto(rs.getInt(1),rs.getString(2),
						rs.getInt(3),rs.getString(4),rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8));
				list.add(dto);
				System.out.println(list+"ddd");
				System.out.println(dto+"dd22");
				
			}return list;
			
		} catch (Exception e) {
			System.out.println(e+"11");
		}
		System.out.println("33");
		return list;
	}
}