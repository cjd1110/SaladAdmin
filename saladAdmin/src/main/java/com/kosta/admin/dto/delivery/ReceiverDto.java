package com.kosta.admin.dto.delivery;

public class ReceiverDto {
	  private int r_ordernum; //주문번호
	  private String r_id; // 사용자 id
	  private String r_name; //사용자 이름
	  private String r_tel; //사용자 전화번호
	  private String r_addr; //사용자 주소
	  
	public int getR_ordernum() {
		return r_ordernum;
	}
	public void setR_ordernum(int r_ordernum) {
		this.r_ordernum = r_ordernum;
	}
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_tel() {
		return r_tel;
	}
	public void setR_tel(String r_tel) {
		this.r_tel = r_tel;
	}
	public String getR_addr() {
		return r_addr;
	}
	public void setR_addr(String r_addr) {
		this.r_addr = r_addr;
	}
	  
	  
}
