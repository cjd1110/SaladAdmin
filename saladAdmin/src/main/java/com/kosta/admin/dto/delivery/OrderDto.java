package com.kosta.admin.dto.delivery;

import java.util.Date;

public class OrderDto {
	private int o_ordernum; //주문번호
	private String o_id; //주문자 아이디
	private String o_pname; //상품이름
	private int o_price; //상품 가격
	private int o_quantity; //상품 수량
	private int o_gram; //상품 단위(그램)
	private Date o_date; //구매일
	private int o_pnumber; //상품번호
	private String o_orderstate; //주문상태
	private String o_img; //상품이미지
	private int o_boxnum; //팩번호    
	private int o_boxquantity;//팩수량
	private int o_step; //팩 구분(7,14,21)
	private int o_totalprice; //총 가격
	private int o_term; // 기간

	public int getO_totalprice() {
		return o_totalprice;
	}
	public void setO_totalprice(int o_totalprice) {
		this.o_totalprice = o_totalprice;
	}
	public int getO_term() {
		return o_term;
	}
	public void setO_term(int o_term) {
		this.o_term = o_term;
	}
	public int getO_ordernum() {
		return o_ordernum;
	}
	public void setO_ordernum(int o_ordernum) {
		this.o_ordernum = o_ordernum;
	}
	public String getO_id() {
		return o_id;
	}
	public void setO_id(String o_id) {
		this.o_id = o_id;
	}
	public String getO_pname() {
		return o_pname;
	}
	public void setO_pname(String o_pname) {
		this.o_pname = o_pname;
	}
	public int getO_price() {
		return o_price;
	}
	public void setO_price(int o_price) {
		this.o_price = o_price;
	}
	public int getO_quantity() {
		return o_quantity;
	}
	public void setO_quantity(int o_quantity) {
		this.o_quantity = o_quantity;
	}
	public int getO_gram() {
		return o_gram;
	}
	public void setO_gram(int o_gram) {
		this.o_gram = o_gram;
	}
	public Date getO_date() {
		return o_date;
	}
	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}
	public int getO_pnumber() {
		return o_pnumber;
	}
	public void setO_pnumber(int o_pnumber) {
		this.o_pnumber = o_pnumber;
	}
	public String getO_orderstate() {
		return o_orderstate;
	}
	public void setO_orderstate(String o_orderstate) {
		this.o_orderstate = o_orderstate;
	}
	public String getO_img() {
		return o_img;
	}
	public void setO_img(String o_img) {
		this.o_img = o_img;
	}
	public int getO_boxnum() {
		return o_boxnum;
	}
	public void setO_boxnum(int o_boxnum) {
		this.o_boxnum = o_boxnum;
	}
	public int getO_boxquantity() {
		return o_boxquantity;
	}
	public void setO_boxquantity(int o_boxquantity) {
		this.o_boxquantity = o_boxquantity;
	}
	public int getO_step() {
		return o_step;
	}
	public void setO_step(int o_step) {
		this.o_step = o_step;
	}
	
	
	
}
