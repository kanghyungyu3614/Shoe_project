package model.dto;

public class SpregistDto {
	int spno;
	String spstatus;
	int spsize;
	String spendday;
	String spsellid;
	String spbuyid;
	int spprice;
	int pno;
	
	public SpregistDto() {
		// TODO Auto-generated constructor stub
	}

	public SpregistDto(int spno, String spstatus, int spsize, String spendday, String spsellid, String spbuyid,
			int spprice, int pno) {
		super();
		this.spno = spno;
		this.spstatus = spstatus;
		this.spsize = spsize;
		this.spendday = spendday;
		this.spsellid = spsellid;
		this.spbuyid = spbuyid;
		this.spprice = spprice;
		this.pno = pno;
	}

	public int getSpno() {
		return spno;
	}

	public void setSpno(int spno) {
		this.spno = spno;
	}

	public String getSpstatus() {
		return spstatus;
	}

	public void setSpstatus(String spstatus) {
		this.spstatus = spstatus;
	}

	public int getSpsize() {
		return spsize;
	}

	public void setSpsize(int spsize) {
		this.spsize = spsize;
	}

	public String getSpendday() {
		return spendday;
	}

	public void setSpendday(String spendday) {
		this.spendday = spendday;
	}

	public String getSpsellid() {
		return spsellid;
	}

	public void setSpsellid(String spsellid) {
		this.spsellid = spsellid;
	}

	public String getSpbuyid() {
		return spbuyid;
	}

	public void setSpbuyid(String spbuyid) {
		this.spbuyid = spbuyid;
	}

	public int getSpprice() {
		return spprice;
	}

	public void setSpprice(int spprice) {
		this.spprice = spprice;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	@Override
	public String toString() {
		return "SpregistDto [spno=" + spno + ", spstatus=" + spstatus + ", spsize=" + spsize + ", spendday=" + spendday
				+ ", spsellid=" + spsellid + ", spbuyid=" + spbuyid + ", spprice=" + spprice + ", pno=" + pno + "]";
	}
	
}
