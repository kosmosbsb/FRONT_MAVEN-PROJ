package com.kosmo.spacecloud.service.psy;

import java.sql.Date;

public class PsyTestDTO {
	//테스트 페이지 출력
	private String space_name;
	private String h_nickname;
	private String img_main;
	
	//예약 상세보기 예약내용
	private String reserve_no;
	private String regidate;
	//private String space_name;중복됨
	private String reserve_date;
	private String reserve_person;
	private String ask;
	
	//예약 상세보기 예약자 정보
	private String reserve_name;
	private String reserve_phone;
	private String reserve_email;
	
	//예약 상세보기 환불규정 안내
	private float leftday8;
	private float leftday7;
	private float leftday6;
	private float leftday5;
	private float leftday4;
	private float leftday3;
	private float leftday2;
	private float leftday1;
	private float leftday0;
	
	//예약 상세보기 공간에 대한 간략한 정보
	//private String space_name;중복됨
	private String address;
	private String phone;
	
	//예약 상세보기 가격에 대한 정보
	private String cancel_comment;
	//private String reserve_date;중복됨
	//private String reserve_person;중복됨
	private String cancel_price;
	
	
	
	public float getLeftday8() {
		return leftday8;
	}
	public void setLeftday8(float leftday8) {
		this.leftday8 = leftday8;
	}
	public float getLeftday7() {
		return leftday7;
	}
	public void setLeftday7(float leftday7) {
		this.leftday7 = leftday7;
	}
	public float getLeftday6() {
		return leftday6;
	}
	public void setLeftday6(float leftday6) {
		this.leftday6 = leftday6;
	}
	public float getLeftday5() {
		return leftday5;
	}
	public void setLeftday5(float leftday5) {
		this.leftday5 = leftday5;
	}
	public float getLeftday4() {
		return leftday4;
	}
	public void setLeftday4(float leftday4) {
		this.leftday4 = leftday4;
	}
	public float getLeftday3() {
		return leftday3;
	}
	public void setLeftday3(float leftday3) {
		this.leftday3 = leftday3;
	}
	public float getLeftday2() {
		return leftday2;
	}
	public void setLeftday2(float leftday2) {
		this.leftday2 = leftday2;
	}
	public float getLeftday1() {
		return leftday1;
	}
	public void setLeftday1(float leftday1) {
		this.leftday1 = leftday1;
	}
	public float getLeftday0() {
		return leftday0;
	}
	public void setLeftday0(float leftday0) {
		this.leftday0 = leftday0;
	}
	public String getCancel_comment() {
		return cancel_comment;
	}
	public void setCancel_comment(String cancel_comment) {
		this.cancel_comment = cancel_comment;
	}
	public String getCancel_price() {
		return cancel_price;
	}
	public void setCancel_price(String cancel_price) {
		this.cancel_price = cancel_price;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getReserve_name() {
		return reserve_name;
	}
	public void setReserve_name(String reserve_name) {
		this.reserve_name = reserve_name;
	}
	public String getReserve_phone() {
		return reserve_phone;
	}
	public void setReserve_phone(String reserve_phone) {
		this.reserve_phone = reserve_phone;
	}
	public String getReserve_email() {
		return reserve_email;
	}
	public void setReserve_email(String reserve_email) {
		this.reserve_email = reserve_email;
	}
	public String getReserve_no() {
		return reserve_no;
	}
	public void setReserve_no(String reserve_no) {
		this.reserve_no = reserve_no;
	}
	public String getRegidate() {
		return regidate;
	}
	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}
	public String getReserve_date() {
		return reserve_date;
	}
	public void setReserve_date(String reserve_date) {
		this.reserve_date = reserve_date;
	}
	public String getReserve_person() {
		return reserve_person;
	}
	public void setReserve_person(String reserve_person) {
		this.reserve_person = reserve_person;
	}
	public String getAsk() {
		return ask;
	}
	public void setAsk(String ask) {
		this.ask = ask;
	}
	public String getSpace_name() {
		return space_name;
	}
	public void setSpace_name(String space_name) {
		this.space_name = space_name;
	}
	public String getH_nickname() {
		return h_nickname;
	}
	public void setH_nickname(String h_nickname) {
		this.h_nickname = h_nickname;
	}
	public String getImg_main() {
		return img_main;
	}
	public void setImg_main(String img_main) {
		this.img_main = img_main;
	}
	
}
