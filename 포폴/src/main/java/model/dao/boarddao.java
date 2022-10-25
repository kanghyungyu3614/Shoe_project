package model.dao;


public class boarddao extends dao {
	private static boarddao mdao = new boarddao();
	public static boarddao getInstance() { return mdao;}
	
	
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
	
	
	
}
