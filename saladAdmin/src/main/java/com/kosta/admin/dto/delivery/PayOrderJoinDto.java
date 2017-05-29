package com.kosta.admin.dto.delivery;

public class PayOrderJoinDto {
	 private int o_ordernum;
	 private int o_boxnum;
	 private int o_boxquantity;
	 private int o_step;
	 private String o_orderstate;
	 private String p_depositor;
	 private String p_bankname;
	 private String p_way;
	 private int p_amount;
	
	public String getO_orderstate() {
		return o_orderstate;
	}
	public void setO_orderstate(String o_orderstate) {
		this.o_orderstate = o_orderstate;
	}
	public int getO_step() {
		return o_step;
	}
	public void setO_step(int o_step) {
		this.o_step = o_step;
	}
	public int getO_ordernum() {
		return o_ordernum;
	}
	public void setO_ordernum(int o_ordernum) {
		this.o_ordernum = o_ordernum;
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
	public String getP_depositor() {
		return p_depositor;
	}
	public void setP_depositor(String p_depositor) {
		this.p_depositor = p_depositor;
	}
	public String getP_bankname() {
		return p_bankname;
	}
	public void setP_bankname(String p_bankname) {
		this.p_bankname = p_bankname;
	}
	public String getP_way() {
		return p_way;
	}
	public void setP_way(String p_way) {
		this.p_way = p_way;
	}
	public int getP_amount() {
		return p_amount;
	}
	public void setP_amount(int p_amount) {
		this.p_amount = p_amount;
	}
	 
	 
}
