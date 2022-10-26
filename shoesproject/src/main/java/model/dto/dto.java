package model.dto;

public class dto {
	
	
	private int lnum;
	private String lname;
	private String lid;
	private String lpw;
	private String lph;
	private String lemail;
	private String lsize;
	private String lday;
	
	
	public dto() {
		// TODO Auto-generated constructor stub
	}
	
	
	

	public dto(int lnum, String lname, String lid, String lpw, String lph, String lemail, String lsize, String lday) {
		super();
		this.lnum = lnum;
		this.lname = lname;
		this.lid = lid;
		this.lpw = lpw;
		this.lph = lph;
		this.lemail = lemail;
		this.lsize = lsize;
		this.lday = lday;
	}




	@Override
	public String toString() {
		return "dto [lnum=" + lnum + ", lname=" + lname + ", lid=" + lid + ", lpw=" + lpw + ", lph=" + lph + ", lemail="
				+ lemail + ", lsize=" + lsize + ", lday=" + lday + "]";
	}




	public int getLnum() {
		return lnum;
	}

	public void setLnum(int lnum) {
		this.lnum = lnum;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getLid() {
		return lid;
	}

	public void setLid(String lid) {
		this.lid = lid;
	}

	public String getLpw() {
		return lpw;
	}

	public void setLpw(String lpw) {
		this.lpw = lpw;
	}

	public String getLph() {
		return lph;
	}

	public void setLph(String lph) {
		this.lph = lph;
	}

	public String getLemail() {
		return lemail;
	}

	public void setLemail(String lemail) {
		this.lemail = lemail;
	}

	public String getLsize() {
		return lsize;
	}

	public void setLsize(String lsize) {
		this.lsize = lsize;
	}

	public String getLday() {
		return lday;
	}

	public void setLday(String lday) {
		this.lday = lday;
	}

	
}
