package com.kosta.admin.dto.delivery;

public class InformationDto {
	
	private String i_id; //사용자 아이디   //o_id
	private int i_ordernum; //주문 번호  //o_ordernum
	private String i_buyername; //구매자 이름 //b_name
	private String i_buyeraddr; //구매자 주소 //b_addr
	private String i_buyertel; //구매자 전화번호 //b_tel
	private int i_pnumber; //상품 코드 //o_pnumber
	private String i_pname; //상품이름 //o_pname
	private int i_quantity; //수량 // o_quantity
	private String i_receivename; //받는이 이름 // r_name
	private String i_receiveaddr; //받는이 주소 // r_addr
	private String i_receivetel; //받는이 전화번호 //r_tel
	private int i_boxquantity; //팩 수량 //o_boxquantity
	private int i_boxnum; //팩 번호 //o_boxnum
	private int i_step; //팩 구분  //o_step
	
	public String getI_id() {
		return i_id;
	}
	public void setI_id(String i_id) {
		this.i_id = i_id;
	}
	public int getI_ordernum() {
		return i_ordernum;
	}
	public void setI_ordernum(int i_ordernum) {
		this.i_ordernum = i_ordernum;
	}
	public String getI_buyername() {
		return i_buyername;
	}
	public void setI_buyername(String i_buyername) {
		this.i_buyername = i_buyername;
	}
	public String getI_buyeraddr() {
		return i_buyeraddr;
	}
	public void setI_buyeraddr(String i_buyeraddr) {
		this.i_buyeraddr = i_buyeraddr;
	}
	public String getI_buyertel() {
		return i_buyertel;
	}
	public void setI_buyertel(String i_buyertel) {
		this.i_buyertel = i_buyertel;
	}
	public int getI_pnumber() {
		return i_pnumber;
	}
	public void setI_pnumber(int i_pnumber) {
		this.i_pnumber = i_pnumber;
	}
	public String getI_pname() {
		return i_pname;
	}
	public void setI_pname(String i_pname) {
		this.i_pname = i_pname;
	}
	public int getI_quantity() {
		return i_quantity;
	}
	public void setI_quantity(int i_quantity) {
		this.i_quantity = i_quantity;
	}
	public String getI_receivename() {
		return i_receivename;
	}
	public void setI_receivename(String i_receivename) {
		this.i_receivename = i_receivename;
	}
	public String getI_receiveaddr() {
		return i_receiveaddr;
	}
	public void setI_receiveaddr(String i_receiveaddr) {
		this.i_receiveaddr = i_receiveaddr;
	}
	public String getI_receivetel() {
		return i_receivetel;
	}
	public void setI_receivetel(String i_receivetel) {
		this.i_receivetel = i_receivetel;
	}
	public int getI_boxquantity() {
		return i_boxquantity;
	}
	public void setI_boxquantity(int i_boxquantity) {
		this.i_boxquantity = i_boxquantity;
	}
	public int getI_boxnum() {
		return i_boxnum;
	}
	public void setI_boxnum(int i_boxnum) {
		this.i_boxnum = i_boxnum;
	}
	public int getI_step() {
		return i_step;
	}
	public void setI_step(int i_step) {
		this.i_step = i_step;
	}
	
	
	
}
