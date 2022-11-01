package model.dao;

import java.util.ArrayList;

import model.dto.PregistDto;

public class PregistDao extends dao {
	
	private static PregistDao dao = new PregistDao();
	public static PregistDao getInstance() { return dao; }
	
	// 상품 등록
	public boolean pregist(String ppurpose, String pcategory, String pbrand, String psize, int pprice, String ptitle, String pcontent, String pimg, String pstatus) {
		
		String sql = "insert into product(ppurpose, pcategory, pbrand, psize, pprice, ptitle, pcontent, pimg, pstatus)"
				+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ppurpose);
			ps.setString(2, pcategory);
			ps.setString(3, pbrand);
			ps.setString(4, psize);
			ps.setInt(5, pprice);
			ps.setString(6, ptitle);
			ps.setString(7, pcontent);
			ps.setString(8, pimg);
			ps.setString(9, pstatus);
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
							rs.getString(5), rs.getInt(6),
							rs.getString(7), rs.getString(8),
							rs.getString(9), rs.getString(10),
							rs.getString(11)
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
							rs.getString(5), rs.getInt(6),
							rs.getString(7), rs.getString(8),
							rs.getString(9), rs.getString(10),
							rs.getString(11)
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
						rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getString(8),
						rs.getString(9), rs.getString(10),
						rs.getString(11)
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














