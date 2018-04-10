package com.kosmo.spacecloud.service.khw;

import java.sql.Date;

public class SpaceDTO {
	
	//기본 공간 정보
	private String space_no;
	private String space_name;
	private int heart;
	private int rank;
	private String space_type;
	private String intro_main;
	private String intro_detail;
	private String address;
	private String space_tag;
	private String img_main;
	private String mail;
	private String phone;
	private String id;
	
	//예약관련 추가 정보
	private int min_day;
	private int min_person;
	private int max_person;
	private String price_standard;
	private int price_weekday;
	private int price_weekend;
	private String precaution;
	private String time_or_day;
	private String oper_time;
	private String regularly_close;
	
	
	
	
	public String getSpace_no() {
		return space_no;
	}
	public void setSpace_no(String space_no) {
		this.space_no = space_no;
	}
	public String getSpace_name() {
		return space_name;
	}
	public void setSpace_name(String space_name) {
		this.space_name = space_name;
	}
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getSpace_type() {
		return space_type;
	}
	public void setSpace_type(String space_type) {
		this.space_type = space_type;
	}
	public String getIntro_main() {
		return intro_main;
	}
	public void setIntro_main(String intro_main) {
		this.intro_main = intro_main;
	}
	public String getIntro_detail() {
		return intro_detail;
	}
	public void setIntro_detail(String intro_detail) {
		this.intro_detail = intro_detail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSpace_tag() {
		return space_tag;
	}
	public void setSpace_tag(String space_tag) {
		this.space_tag = space_tag;
	}
	public String getImg_main() {
		return img_main;
	}
	public void setImg_main(String img_main) {
		this.img_main = img_main;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getMin_day() {
		return min_day;
	}
	public void setMin_day(int min_day) {
		this.min_day = min_day;
	}
	public int getMin_person() {
		return min_person;
	}
	public void setMin_person(int min_person) {
		this.min_person = min_person;
	}
	public int getMax_person() {
		return max_person;
	}
	public void setMax_person(int max_person) {
		this.max_person = max_person;
	}
	public String getPrice_standard() {
		return price_standard;
	}
	public void setPrice_standard(String price_standard) {
		this.price_standard = price_standard;
	}
	public int getPrice_weekday() {
		return price_weekday;
	}
	public void setPrice_weekday(int price_weekday) {
		this.price_weekday = price_weekday;
	}
	public int getPrice_weekend() {
		return price_weekend;
	}
	public void setPrice_weekend(int price_weekend) {
		this.price_weekend = price_weekend;
	}
	public String getPrecaution() {
		return precaution;
	}
	public void setPrecaution(String precaution) {
		this.precaution = precaution;
	}
	public String getTime_or_day() {
		return time_or_day;
	}
	public void setTime_or_day(String time_or_day) {
		this.time_or_day = time_or_day;
	}
	public String getOper_time() {
		return oper_time;
	}
	public void setOper_time(String oper_time) {
		this.oper_time = oper_time;
	}
	public String getRegularly_close() {
		return regularly_close;
	}
	public void setRegularly_close(String regularly_close) {
		this.regularly_close = regularly_close;
	}
	
	
}
