package model.dto;

public class PregistDto {
	
	int pno;
	String pcategory;
	String pbrand;
	String pname;
	String pimg;
	String pcolor;
	int pprice;
	String preleaseday;
	
	public PregistDto() {
		// TODO Auto-generated constructor stub
	}
	
	public PregistDto(int pno, String pcategory, String pbrand, String pname, String pimg, String pcolor, int pprice,
			String preleaseday) {
		super();
		this.pno = pno;
		this.pcategory = pcategory;
		this.pbrand = pbrand;
		this.pname = pname;
		this.pimg = pimg;
		this.pcolor = pcolor;
		this.pprice = pprice;
		this.preleaseday = preleaseday;
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
		return "PregistDto [pno=" + pno + ", pcategory=" + pcategory + ", pbrand=" + pbrand + ", pname=" + pname
				+ ", pimg=" + pimg + ", pcolor=" + pcolor + ", pprice=" + pprice + ", preleaseday=" + preleaseday + "]";
	}
	
}
