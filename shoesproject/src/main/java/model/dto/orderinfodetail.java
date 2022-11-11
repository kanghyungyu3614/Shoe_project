package model.dto;

public class orderinfodetail {
	int spno;
	String spstatus;
	int spsize;
	String spendday;
	String spsellid;
	String spbuyid;
	int spprice;
	int pno;
	String pcategory;
	String pbrand;
	String pname;
	String pimg;
	String pcolor;
	int pprice;
	String preleaseday;
	
	public orderinfodetail() {}

	public orderinfodetail(int spno, String spstatus, int spsize, String spendday, String spsellid, String spbuyid,
			int spprice, int pno, String pcategory, String pbrand, String pname, String pimg, String pcolor, int pprice,
			String preleaseday) {
		super();
		this.spno = spno;
		this.spstatus = spstatus;
		this.spsize = spsize;
		this.spendday = spendday;
		this.spsellid = spsellid;
		this.spbuyid = spbuyid;
		this.spprice = spprice;
		this.pno = pno;
		this.pcategory = pcategory;
		this.pbrand = pbrand;
		this.pname = pname;
		this.pimg = pimg;
		this.pcolor = pcolor;
		this.pprice = pprice;
		this.preleaseday = preleaseday;
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

	public String getPcategory() {
		return pcategory;
	}

	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}

	public String getPbrand() {
		return pbrand;
	}

	public void setPbrand(String pbrand) {
		this.pbrand = pbrand;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}

	public String getPcolor() {
		return pcolor;
	}

	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public String getPreleaseday() {
		return preleaseday;
	}

	public void setPreleaseday(String preleaseday) {
		this.preleaseday = preleaseday;
	}

	@Override
	public String toString() {
		return "orderinfodetail [spno=" + spno + ", spstatus=" + spstatus + ", spsize=" + spsize + ", spendday="
				+ spendday + ", spsellid=" + spsellid + ", spbuyid=" + spbuyid + ", spprice=" + spprice + ", pno=" + pno
				+ ", pcategory=" + pcategory + ", pbrand=" + pbrand + ", pname=" + pname + ", pimg=" + pimg
				+ ", pcolor=" + pcolor + ", pprice=" + pprice + ", preleaseday=" + preleaseday + "]";
	}
	
	
	
	
	
}
	
