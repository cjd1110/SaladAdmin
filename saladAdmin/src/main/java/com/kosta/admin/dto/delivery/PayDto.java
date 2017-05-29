package com.kosta.admin.dto.delivery;

public class PayDto {
	private int p_ordernum; //주문번호
	private String p_way; //결제수단
	private int p_amount; //결제금액
	private String p_depositor; //예금주
	private String p_refund; //환불계좌
	private int p_result; //<카드사> 결제결과
	private String p_bankname; //은행명 

	public int getP_ordernum() {
		return p_ordernum;
	}

	public void setP_ordernum(int p_ordernum) {
		this.p_ordernum = p_ordernum;
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

	public String getP_depositor() {
		return p_depositor;
	}

	public void setP_depositor(String p_depositor) {
		this.p_depositor = p_depositor;
	}

	public String getP_refund() {
		return p_refund;
	}

	public void setP_refund(String p_refund) {
		this.p_refund = p_refund;
	}

	public int getP_result() {
		return p_result;
	}

	public void setP_result(int p_result) {
		this.p_result = p_result;
	}

	public String getP_bankname() {
		return p_bankname;
	}

	public void setP_bankname(String p_bankname) {
		this.p_bankname = p_bankname;
	}

}
