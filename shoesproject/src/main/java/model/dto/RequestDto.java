package model.dto;

public class RequestDto {

	private int rno;
	private String rpurpose;
	private String rdetail;
	private String rtitle;
	private String rcontent;
	private String rdate;
	private int lnum;
	
	public RequestDto() {
		// TODO Auto-generated constructor stub
	}

	public RequestDto(int rno, String rpurpose, String rdetail, String rtitle, String rcontent, String rdate,
			int lnum) {
		super();
		this.rno = rno;
		this.rpurpose = rpurpose;
		this.rdetail = rdetail;
		this.rtitle = rtitle;
		this.rcontent = rcontent;
		this.rdate = rdate;
		this.lnum = lnum;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getRpurpose() {
		return rpurpose;
	}

	public void setRpurpose(String rpurpose) {
		this.rpurpose = rpurpose;
	}

	public String getRdetail() {
		return rdetail;
	}

	public void setRdetail(String rdetail) {
		this.rdetail = rdetail;
	}

	public String getRtitle() {
		return rtitle;
	}

	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public int getLnum() {
		return lnum;
	}

	public void setLnum(int lnum) {
		this.lnum = lnum;
	}

	@Override
	public String toString() {
		return "RequestDto [rno=" + rno + ", rpurpose=" + rpurpose + ", rdetail=" + rdetail + ", rtitle=" + rtitle
				+ ", rcontent=" + rcontent + ", rdate=" + rdate + ", lnum=" + lnum + "]";
	}
	
}
