package com.kosta.admin.dto.delivery;

public class BoxDto {
	private int box_num; //용기번호
	private String box_img; //이미지
	private int box_quantity; //용기갯수
	
	public int getBox_num() {
		return box_num;
	}
	public void setBox_num(int box_num) {
		this.box_num = box_num;
	}
	public String getBox_img() {
		return box_img;
	}
	public void setBox_img(String box_img) {
		this.box_img = box_img;
	}
	public int getBox_quantity() {
		return box_quantity;
	}
	public void setBox_quantity(int box_quantity) {
		this.box_quantity = box_quantity;
	}
	
	
	
}
