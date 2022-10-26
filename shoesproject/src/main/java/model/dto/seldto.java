package model.dto;

public class seldto {

	private int snum;
	private	String stitle;
	private String scontent ;
	private String  sfile;
	private String  lid ;
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getStitle() {
		return stitle;
	}
	public void setStitle(String stitle) {
		this.stitle = stitle;
	}
	public String getScontent() {
		return scontent;
	}
	public void setScontent(String scontent) {
		this.scontent = scontent;
	}
	public String getSfile() {
		return sfile;
	}
	public void setSfile(String sfile) {
		this.sfile = sfile;
	}
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	
	public seldto() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "seldto [snum=" + snum + ", stitle=" + stitle + ", scontent=" + scontent + ", sfile=" + sfile + ", lid="
				+ lid + "]";
	}
	public seldto(int snum, String stitle, String scontent, String sfile, String lid) {
		super();
		this.snum = snum;
		this.stitle = stitle;
		this.scontent = scontent;
		this.sfile = sfile;
		this.lid = lid;
	}
	
}
