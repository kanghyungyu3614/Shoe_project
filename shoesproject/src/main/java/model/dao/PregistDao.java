package model.dao;

public class PregistDao extends dao {
	
	private static PregistDao dao = new PregistDao();
	public static PregistDao getInstance() { return dao; }
	
	public boolean pregist(String ppurpose, String pcategory, String ptitle, String pcontent, String pimg) {
		
		String sql = "insert into product(ppurpose, pcategory, ptitle, pcontent, pimg)"
				+ "values(?, ?, ?, ?, ?)";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ppurpose);
			ps.setString(2, pcategory);
			ps.setString(3, ptitle);
			ps.setString(4, pcontent);
			ps.setString(5, pimg);
			ps.executeUpdate();
			
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
		
	}
	
}
