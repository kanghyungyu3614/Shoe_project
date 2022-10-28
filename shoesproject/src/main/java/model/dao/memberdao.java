package model.dao;

import model.dao.memberdao;
import model.dto.dto;

public class memberdao extends dao{

	private static memberdao mdao = new memberdao();
	public static memberdao getInstance() { return mdao;}
	
	
	//가입하기
	
	public boolean lsignup(dto dto) {
		String sql ="insert into shoe(lname ,lid , lpw, lph, lemail ,lsize)values(?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1,dto.getLname());
			ps.setString(2, dto.getLid());
			ps.setString(3, dto.getLpw());
			ps.setString(4, dto.getLph());
			ps.setString(5, dto.getLemail());
			ps.setString(6, dto.getLsize());
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}return false;
	}
	
	/*
	 * public boolean lsignup( dto dto ) { String sql
	 * ="insert into shoe( lname ,lid,lpw,lph,lemail,lsize)values(?,?,?,?,?,?)"; try
	 * { ps = con.prepareStatement(sql); ps.setString( 1 , dto.getLname() );
	 * ps.setString( 2 , dto.getLid() ); ps.setString( 3 , dto.getLpw() );
	 * ps.setString( 4 , dto.getLph() ); ps.setString( 5 , dto.getLemail() );
	 * ps.setString( 6 , dto.getLsize() ); ps.executeUpdate(); return true;
	 * }catch(Exception e) { System.out.println(e);} return false;
	 * 
	 * }
	 */
	
	// 아이디 검사
	public boolean check(String lid ,String lname) {
		String sql ="select * from shoe where lid =? and lname=?";
		try {
			ps= con.prepareStatement(sql);
		    ps.setString(1,lid);
		    ps.setString(2, lname);
		    rs =  ps.executeQuery();
			if(rs.next())return true;
		} catch (Exception e) {System.out.println(e);}
		return false;
	}
	
	// 로그인
	public int M_login(String lid ,String lpw) {
		String sql = "select * from shoe where lid=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, lid);
			rs = ps.executeQuery();
				if(rs.next()) {
					sql ="select * from shoe where lid = ? and lpw = ?";
					ps = con.prepareStatement(sql);
					ps.setString(1, rs.getString(3));
					ps.setString(2, lpw);
					rs = ps.executeQuery();
					if(rs.next()) {return 1;}
					return 2;
				}
		} catch (Exception e) {
			System.out.println(e); return 3;
		}
		return 0;
	}
	//아이디 찾기
	public String findid(String findname, String findph) {
		String sql = "select * from shoe where lname=? and lph=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, findname);
			ps.setString(2, findph);
			rs = ps.executeQuery();
			if(rs.next()) {
				return rs.getString(3);
			}
		} catch (Exception e) {System.out.println(e);}
		return null;
	}
	
	//비번 찾기 난수
	public boolean findpw(String id,String name,String ph) {
		
		String sql = "select *from shoe where lid=? and lname=? and lph=?";
		try {
			ps =con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, ph);
			rs = ps.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);}
		return false;
		}
	
	
	//임시비번 업데이트
	public boolean pwch(String id, String rand) {
		String sql ="update shoe set lpw= ? where lid= ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, rand);
			ps.setString(2, id);
			ps.executeUpdate();
			return true;
		} catch (Exception e) {System.out.println(e);
			// TODO: handle exception
		}return false;
		
		
	}
	
	//회원 호출
	
	public dto getpage(String lid) {
		dto dto = null;
		String sql = "select * from shoe where lid = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, lid);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new dto(rs.getInt( 1 ) , rs.getString( 2 ) ,
						rs.getString( 3 ), rs.getString( 4 ) ,
						rs.getString( 5 ), rs.getString( 6 ), 
						rs.getString( 7 ), rs.getString(8));
				return dto;
			}
		} catch (Exception e) {
			System.out.println(e);
		}return dto;
	}
	
	// 탈퇴
	
	public boolean memberdelete(String lid,String lpw) {
		String sql = "delete from shoe where lid = ? and lpw =?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, lid);
			ps.setString(2, lpw);
			int count = ps.executeUpdate(); //삭제가 안되도 true여서 
			if(count == 1) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}return false;
	}

	//아이디를 번호로 
	public int getlnum(String lid) {
		String sql = "select * from shoe where lid =?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, lid);
			rs = ps.executeQuery();
			if(rs.next()) return rs.getInt(1);
		} catch (Exception e) {
			System.out.println(e);
		}return 0;
	}

	// 회원정보 수정 2022-10-28 안태섭
	public boolean updatemember (String lpw , String lph , String lemail , String lsize , int lnum) {
		String sql = "update shoe set lpw = ? , lph = ? , lemail = ? , lsize = ? where lnum = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, lpw);
			ps.setString(2, lph);
			ps.setString(3, lemail);
			ps.setString(4, lsize);
			ps.setInt(5, lnum);
			ps.executeUpdate(); return true;
		}catch (Exception e) {System.out.println(e);}
		return false;
	}
	
	
}