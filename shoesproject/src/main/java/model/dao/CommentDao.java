package model.dao;

import controll.admin.comment;
import model.dto.CommentDto;

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

	
	public boolean viewcomment(CommentDto dto) {
		String sql = "select * from comment";
		try {
			ps = con.prepareStatement(sql);
			ps.executeQuery(); return true;
		}catch (Exception e) {System.out.println(e);}
		return false;
		
	}
	
	
	
	
}
