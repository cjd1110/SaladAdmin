package com.kosta.admin.dto.delivery;

public class DeliveryDto {
	private int d_ordernum; //주문 번호  
	private int d_deliverynum; //송장번호  
	private String d_deliveryname; //배송업체 
	
	public int getD_ordernum() {
		return d_ordernum;
	}
	public void setD_ordernum(int d_ordernum) {
		this.d_ordernum = d_ordernum;
	}
	public int getD_deliverynum() {
		return d_deliverynum;
	}
	public void setD_deliverynum(int d_deliverynum) {
		this.d_deliverynum = d_deliverynum;
	}
	public String getD_deliveryname() {
		return d_deliveryname;
	}
	public void setD_deliveryname(String d_deliveryname) {
		this.d_deliveryname = d_deliveryname;
	}

	

}
