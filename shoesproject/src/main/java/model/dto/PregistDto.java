package model.dto;

public class PregistDto {
	
	private int pno;
	private String ppurpose;
	private String pcategory;
	private String pbrand;
	private String psize;
	private String ptitle;
	private String pcontent;
	private String pdate;
	private String pimg;
	
	public PregistDto() {
		// TODO Auto-generated constructor stub
	}

	public PregistDto(int pno, String ppurpose, String pcategory, String pbrand, String psize, String ptitle,
			String pcontent, String pdate, String pimg) {
		super();
		this.pno = pno;
		this.ppurpose = ppurpose;
		this.pcategory = pcategory;
		this.pbrand = pbrand;
		this.psize = psize;
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.pdate = pdate;
		this.pimg = pimg;
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

	@Override
	public String toString() {
		return "PregistDto [pno=" + pno + ", ppurpose=" + ppurpose + ", pcategory=" + pcategory + ", pbrand=" + pbrand
				+ ", psize=" + psize + ", ptitle=" + ptitle + ", pcontent=" + pcontent + ", pdate=" + pdate + ", pimg="
				+ pimg + "]";
	}
	
}
