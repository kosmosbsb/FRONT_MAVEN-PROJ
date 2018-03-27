package com.kosmo.spacecloud.service.login;

import java.sql.Date;

public class MemberDTO {
	
	//일반
	private String id;
	private String img;
	private String n_nickname;
	private String name;
	private String mail;
	private String gender;
	private String age;
	private String phone;
	private String n_alarm_sms;
	private String n_alarm_mail;
	private int credit;
	
	//호스트 등록시 추가 유입 정보
	private String h_nickname;
	private String introduce;
	private String h_alarm_sms;
	private String h_alarm_mail;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getN_nickname() {
		return n_nickname;
	}
	public void setN_nickname(String n_nickname) {
		this.n_nickname = n_nickname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getN_alarm_sms() {
		return n_alarm_sms;
	}
	public void setN_alarm_sms(String n_alarm_sms) {
		this.n_alarm_sms = n_alarm_sms;
	}
	public String getN_alarm_mail() {
		return n_alarm_mail;
	}
	public void setN_alarm_mail(String n_alarm_mail) {
		this.n_alarm_mail = n_alarm_mail;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public String getH_nickname() {
		return h_nickname;
	}
	public void setH_nickname(String h_nickname) {
		this.h_nickname = h_nickname;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getH_alarm_sms() {
		return h_alarm_sms;
	}
	public void setH_alarm_sms(String h_alarm_sms) {
		this.h_alarm_sms = h_alarm_sms;
	}
	public String getH_alarm_mail() {
		return h_alarm_mail;
	}
	public void setH_alarm_mail(String h_alarm_mail) {
		this.h_alarm_mail = h_alarm_mail;
	}
	
	
	
}
