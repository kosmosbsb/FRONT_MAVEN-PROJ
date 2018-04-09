package com.kosmo.spacecloud.service.psy;

import java.sql.Date;

public class PsyTestDTO {
	//테스트 페이지 출력
	private String space_name;
	private String h_nickname;
	private String img_main;
	private String space_no;
	
	//예약 상세보기 예약내용
	private String reserve_no;
	private String regidate;
	//private String space_name;중복됨
	//private String reserve_date;//180404 에 삭제함
	private String reserve_person;
	private String ask;
	private String startdate;//180404에 추가함
	private String enddate;//180404에 추가함
	
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
	private String status;
	private String address;
	private String phone;
	
	//예약 상세보기 가격에 대한 정보
	private String cancel_comment;
	//private String reserve_date;중복됨
	//private String reserve_person;중복됨
	private String diff;
	private String refundprice;
	
	//예약폼에 적용할 정보들
	private String min_day;
	private String max_day;
	private String min_person;
	private String max_person;
	private String price_standard;
	private String price_weekday;
	private String time_or_day;
	private String oper_time;
	private String regularly_close;
	private String totalprice;//180409에 새로 추가함. reserve 에 들어갈 새 컬럼.
	
	
	public String getDiff() {
		return diff;
	}
	public void setDiff(String diff) {
		this.diff = diff;
	}
	public String getRefundprice() {
		return refundprice;
	}
	public void setRefundprice(String refundprice) {
		this.refundprice = refundprice;
	}
	public String getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
	}
	public String getMin_day() {
		return min_day;
	}
	public void setMin_day(String min_day) {
		this.min_day = min_day;
	}
	public String getMax_day() {
		return max_day;
	}
	public void setMax_day(String max_day) {
		this.max_day = max_day;
	}
	public String getMin_person() {
		return min_person;
	}
	public void setMin_person(String min_person) {
		this.min_person = min_person;
	}
	public String getMax_person() {
		return max_person;
	}
	public void setMax_person(String max_person) {
		this.max_person = max_person;
	}
	public String getPrice_standard() {
		return price_standard;
	}
	public void setPrice_standard(String price_standard) {
		this.price_standard = price_standard;
	}
	public String getPrice_weekday() {
		return price_weekday;
	}
	public void setPrice_weekday(String price_weekday) {
		this.price_weekday = price_weekday;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getSpace_no() {
		return space_no;
	}
	public void setSpace_no(String space_no) {
		this.space_no = space_no;
	}
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
