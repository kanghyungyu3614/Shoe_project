package model.dao;

import java.util.ArrayList;

import model.dto.PregistDto;

public class PregistDao extends dao {
	
	private static PregistDao dao = new PregistDao();
	public static PregistDao getInstance() { return dao; }
	
	// 상품 등록
	public boolean pregist(String pcategory, String pbrand, String pname, String pimg, String pcolor, int pprice, String preleaseday) {
		
		String sql = "insert into product(pcategory, pbrand, pname, pimg, pcolor, pprice, preleaseday)"
				+ "values(?, ?, ?, ?, ?, ?, ?)";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, pcategory);
			ps.setString(2, pbrand);
			ps.setString(3, pname);
			ps.setString(4, pimg);
			ps.setString(5, pcolor);
			ps.setInt(6, pprice);
			ps.setString(7, preleaseday);
			ps.executeUpdate();
			
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
		
	}
	
	// 어드민 페이지 상품등록 리스트 불러오기
	public ArrayList<PregistDto> pload() {
		ArrayList<PregistDto> list = new ArrayList<>();
		String sql = "select * from product order by pno desc limit 6";
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
	
	// 어드민 상품등록 상세보기 페이지 리스트 출력
	public ArrayList<PregistDto> ploadDetail() {
		ArrayList<PregistDto> list = new ArrayList<>();
		String sql = "select * from product order by pno desc";
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
	
	// 메인에 상품 리스트 출력 
	public ArrayList<PregistDto> ploadMain() {
		ArrayList<PregistDto> list = new ArrayList<>();
		String sql = "select * from product order by pno desc limit 8";
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
	
	// 상품 삭제
	public boolean pdelete(int pno) {
		String sql = "delete from product where pno = " + pno;
		
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














