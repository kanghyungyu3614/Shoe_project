package model.dto;

public class dto {
	
	
	private int num;
	private String s_name;

	private String s_add;

	private String s_id;
	private String s_pw;
	private String s_phone;
	private String s_size;
	private String s_day;
	
	public dto() {
		// TODO Auto-generated constructor stub
	}

	public dto(int num, String s_name, String s_add, String s_id, String s_pw, String s_phone, String s_size,
			String s_day) {
		super();
		this.num = num;
		this.s_name = s_name;
		this.s_add = s_add;
		this.s_id = s_id;
		this.s_pw = s_pw;
		this.s_phone = s_phone;
		this.s_size = s_size;
		this.s_day = s_day;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_add() {
		return s_add;
	}

	public void setS_add(String s_add) {
		this.s_add = s_add;
	}

	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public String getS_pw() {
		return s_pw;
	}

	public void setS_pw(String s_pw) {
		this.s_pw = s_pw;
	}

	public String getS_phone() {
		return s_phone;
	}

	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}

	public String getS_size() {
		return s_size;
	}

	public void setS_size(String s_size) {
		this.s_size = s_size;
	}

	public String getS_day() {
		return s_day;
	}

	public void setS_day(String s_day) {
		this.s_day = s_day;
	}
	
	
	

}
