package model.dao;

import java.util.ArrayList;

import model.dto.seldto;

public class boarddao extends dao {
	private static boarddao mdao = new boarddao();
	public static boarddao getInstance() { return mdao;}
	
	//등록 c
	public boolean sdraw( String title , String content , String file , int lnum ) {
		String sql = "insert into board(stitle,scontent,sfile,lnum)values(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2,content);
			ps.setString(3, file);
			ps.setInt(4, lnum);
			
			ps.executeUpdate(); return true;
			
		} catch (Exception e) {
			System.out.println(e);
		}return false;
		
		
	}
	
	// 출력 r
	
	public ArrayList<seldto>getsellove(){
		ArrayList<seldto>list = new ArrayList<>();
		String sql="select b.* , s.lid from signup s , board b where s.lnum = b.lnum";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				seldto dto = new seldto(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(6));
					list.add(dto);
						
			}
			
		} catch (Exception e) {System.out.println(e);}
		return list;}
	
	//셀럽 업데이트
	
	public boolean selupdata(String title,String content, int snum) {
		String sql ="update board set stitle= '"+title+"' ,scontent = '"+content+"' where snum= "+snum;
		
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			return true;
			
		} catch (Exception e) {
			System.out.println(e);
		}return false;
	}
	
	//셀럽 삭제
	public boolean seldelete(int snum) {
		String sql ="delete from board where snum ="+snum;
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			return true;
		} catch (Exception e) {System.out.println(e);
		}return false;
	}
	
}
