package model.dao;


public class boarddao extends dao {
	private static boarddao mdao = new boarddao();
	public static boarddao getInstance() { return mdao;}
	
	
	public boolean sdraw(String id,int num, String title, String content ,String file ) {
		String sql = "insert into board(snum,sid,stitle,scontent,sfile)values(?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.setString(2, id);
			ps.setString(3,title);
			ps.setString(4, content);
			ps.setString(5, file);
			ps.executeUpdate(); return true;
			
		} catch (Exception e) {
			System.out.println(e);
		}return false;
		
		
	}
	
	
	
}
