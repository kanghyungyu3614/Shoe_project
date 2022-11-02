package model.dao;

import java.util.ArrayList;

import model.dto.CommentDto;
import model.dto.RequestDto;

public class CommentDao extends dao {

	private static CommentDao dao = new CommentDao();
	public static CommentDao getInstance() { return dao; }
	
	public boolean writrecomment(CommentDto dto) { /* 문의 답변 DAO */
		String sql = "insert into comment (ctitle , ccontent , rno) values ( ? , ? , ? )";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getCtitle());
			ps.setString(2 , dto.getCcontent());
			ps.setInt(3 , dto.getRno());
			ps.executeUpdate();
			return true;
		}catch (Exception e) {System.out.println("문의답변 오류 " + e);}
		return false;
	}
	// 3. 글 조회
	public ArrayList<CommentDto> getboard(int rno) {
		ArrayList<CommentDto> list = new ArrayList<>();
		String sql ="select * from comment where = ? "; 
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, rno);
			rs = ps.executeQuery();
			if( rs.next() ) {
				CommentDto dto = new CommentDto(
						rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4),
						rs.getInt(5));
				return list;
			}
		}catch (Exception e) {System.out.println(e);}
		return list;
	}
	

		
	
	
	
	
	
}
