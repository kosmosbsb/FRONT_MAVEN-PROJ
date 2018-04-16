package com.kosmo.spacecloud.service.psh;

public class SearchDTO {
	
	private int space_no;
	private String space_name;
	private int heart;
	private int rank;
	private String space_type;//공간유형
	private String address;
	private String space_tag;
	private String img_main;//공간 대표 이미지
	private String sigungu;
	
	private int review_no;//리뷰 일련번호
	private String price_standard;//공간당가격(S) OR 1인당가격(P)
	private int price_weekday;//주중기본가격
	private String time_or_day;//시간단위(T), 일단위(D)
	
/*	public SearchDTO() {
		
	}
	
	public SearchDTO(int space_no,
	 String space_name,
	 int heart,
	 int rank,
	 String space_type,
	 String address,
	 String space_tag,
	 String img_main,
	 int review_no,
	 String price_standard,
	 int price_weekday,
	 String time_or_day) {
		super();
		this.space_no = space_no;
		this.space_name = space_name;
		this.heart = heart;
		this.rank = rank;
		this.space_type = space_type;
		this.address = address;
		this.space_tag = space_tag;
		this.img_main = img_main;
		this.review_no = review_no;
		this.price_standard = price_standard;
		this.price_weekday = price_weekday;
		this.time_or_day = time_or_day;
	}*/
	public String getSigungu() {
		return sigungu;
	}
	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}
	
	public int getSpace_no() {
		return space_no;
	}
	public void setSpace_no(int space_no) {
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
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
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
	public String getTime_or_day() {
		return time_or_day;
	}
	public void setTime_or_day(String time_or_day) {
		this.time_or_day = time_or_day;
	}
	
	
}
