package com.kosmo.spacecloud.service.psh;

import java.sql.Date;

public class NoticeDTO {
	
	private int notice_no;
	private String title;
	private String content;
	private Date regidate;
	private String normal_or_host;//유저쪽인지 호스트쪽인지
	private String category;//유형
	private String admin_id;//관리자 아이디
	
	
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegidate() {
		return regidate;
	}
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
	public String getNormal_or_host() {
		return normal_or_host;
	}
	public void setNormal_or_host(String normal_or_host) {
		this.normal_or_host = normal_or_host;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	
	
}
