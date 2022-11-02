package model.dto;

public class CommentDto {
	
	private int cno;
	private String ctitle;
	private String ccontent;
	private String cdate;
	private int rno;
	
	public CommentDto() {} // 깡통

	public CommentDto(int cno, String ctitle, String ccontent, String cdate, int rno) { // 풀생
		super();
		this.cno = cno;
		this.ctitle = ctitle;
		this.ccontent = ccontent;
		this.cdate = cdate;
		this.rno = rno;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getCcontent() {
		return ccontent;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public String getCdate() {
		return cdate;
	}

	public void setCdate(String cdate) {
		this.cdate = cdate;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	@Override
	public String toString() {
		return "CommentDto [cno=" + cno + ", ctitle=" + ctitle + ", ccontent=" + ccontent + ", cdate=" + cdate
				+ ", rno=" + rno + "]";
	}
	
	
	
}
