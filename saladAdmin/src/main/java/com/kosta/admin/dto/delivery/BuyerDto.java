package com.kosta.admin.dto.delivery;

public class BuyerDto {
	private int b_ordernum; //주문번호
	private String b_id; //아이디
	private String b_name; //이름
	private String b_tel; //번호
	private String b_addr; //주소
	
	public int getB_ordernum() {
		return b_ordernum;
	}
	public void setB_ordernum(int b_ordernum) {
		this.b_ordernum = b_ordernum;
	}
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_tel() {
		return b_tel;
	}
	public void setB_tel(String b_tel) {
		this.b_tel = b_tel;
	}
	public String getB_addr() {
		return b_addr;
	}
	public void setB_addr(String b_addr) {
		this.b_addr = b_addr;
	}
	
	
}
