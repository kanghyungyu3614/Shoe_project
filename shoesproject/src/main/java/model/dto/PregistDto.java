package model.dto;

public class PregistDto {
	
	private int pno;
	private String ppurpose;
	private String pcategory;
	private String pbrand;
	private String psize;
	private int pprice;
	private String ptitle;
	private String pcontent;
	private String pdate;
	private String pimg;
	private String pstatus;
	
	public PregistDto() {
		// TODO Auto-generated constructor stub
	}
	
	public PregistDto(int pno, String ppurpose, String pcategory, String pbrand, String psize, int pprice,
			String ptitle, String pcontent, String pdate, String pimg, String pstatus) {
		super();
		this.pno = pno;
		this.ppurpose = ppurpose;
		this.pcategory = pcategory;
		this.pbrand = pbrand;
		this.psize = psize;
		this.pprice = pprice;
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.pdate = pdate;
		this.pimg = pimg;
		this.pstatus = pstatus;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getPpurpose() {
		return ppurpose;
	}

	public void setPpurpose(String ppurpose) {
		this.ppurpose = ppurpose;
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

	public String getPsize() {
		return psize;
	}

	public void setPsize(String psize) {
		this.psize = psize;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public String getPtitle() {
		return ptitle;
	}

	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}

	public String getPcontent() {
		return pcontent;
	}

	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}

	public String getPstatus() {
		return pstatus;
	}

	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}

	@Override
	public String toString() {
		return "PregistDto [pno=" + pno + ", ppurpose=" + ppurpose + ", pcategory=" + pcategory + ", pbrand=" + pbrand
				+ ", psize=" + psize + ", pprice=" + pprice + ", ptitle=" + ptitle + ", pcontent=" + pcontent
				+ ", pdate=" + pdate + ", pimg=" + pimg + ", pstatus=" + pstatus + "]";
	}
	
}
