
/* Drop Tables */

DROP TABLE ADMIN_ANSWER CASCADE CONSTRAINTS;
DROP TABLE FCM_TOKEN CASCADE CONSTRAINTS;
DROP TABLE HELP CASCADE CONSTRAINTS;
DROP TABLE NOTICE CASCADE CONSTRAINTS;
DROP TABLE RESERVE_CANCEL CASCADE CONSTRAINTS;
DROP TABLE USER_CREDIT CASCADE CONSTRAINTS;
DROP TABLE RESERVE CASCADE CONSTRAINTS;
DROP TABLE SERVICEINFO_HOSTINFO CASCADE CONSTRAINTS;
DROP TABLE SERVICEINFO_NORMALINFO CASCADE CONSTRAINTS;
DROP TABLE SC_ADMIN CASCADE CONSTRAINTS;
DROP TABLE SPACE_REFUND CASCADE CONSTRAINTS;
DROP TABLE SPACE_RESERVE_INFO CASCADE CONSTRAINTS;
DROP TABLE SPACE CASCADE CONSTRAINTS;
DROP TABLE USER_HOST_IMG CASCADE CONSTRAINTS;
DROP TABLE USER_HOST CASCADE CONSTRAINTS;
DROP TABLE USER_QUESTION CASCADE CONSTRAINTS;
DROP TABLE USER_NORMAL CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE ADMIN_ANSWER
(
	-- 문의 일련변호와 동일함
	NO number NOT NULL,
	ANSWER_DATE date DEFAULT SYSDATE,
	CONTENT nvarchar2(300),
	ID varchar2(15 char),
	PRIMARY KEY (NO)
);


CREATE TABLE FCM_TOKEN
(
	-- 1씩 늘어나게 시퀀스 생성하기
	TOKEN_INDEX number NOT NULL,
	TOKEN varchar2(300 char),
	-- 외부키 연결 없음.
	ID varchar2(15),
	PRIMARY KEY (TOKEN_INDEX)
);


CREATE TABLE HELP
(
	NOTICE_NO number NOT NULL,
	TITLE nvarchar2(100),
	-- 웹에디터로 이미지경로, 링크버튼 등 추가
	CONTENT nvarchar2(500),
	REGIDATE date DEFAULT SYSDATE,
	-- 일반(N), 호스트(H)
	NORMAL_OR_HOST char(1 char),
	CATEGORY nvarchar2(10),
	ID varchar2(15 char) NOT NULL,
	PRIMARY KEY (NOTICE_NO)
);


CREATE TABLE NOTICE
(
	NOTICE_NO number NOT NULL,
	TITLE nvarchar2(100),
	-- 웹에디터로 이미지경로, 링크버튼 등 추가
	CONTENT nvarchar2(500),
	REGIDATE date DEFAULT SYSDATE,
	-- 일반(N), 호스트(H)
	NORMAL_OR_HOST char(1 char),
	CATEGORY nvarchar2(10),
	ID varchar2(15 char) NOT NULL,
	PRIMARY KEY (NOTICE_NO)
);


CREATE TABLE RESERVE
(
	RESERVE_NO number NOT NULL,
	RESERVE_NAME nvarchar2(10),
	RESERVE_PHONE nvarchar2(11),
	RESERVE_EMAIL nvarchar2(30),
	-- 예약확정, 승인대기, 결제대기, 추가예약(예약변경?), 이용완료, 취소환불
	STATUS nvarchar2(30),
	-- 최소1일, 최대30일(13자*최대30일 + 구분자* 최대29개)
	RESERVE_DATE nvarchar2(420),
	-- 00:00~24:00
	RESERVE_TIME varchar2(12 char),
	RESERVE_PERSON number,
	REGIDATE date DEFAULT SYSDATE,
	ASK nvarchar2(300),
	PRICE number,
	USED_CREDIT number,
	-- 공간 일련번호와 동일
	-- 
	SPACE_NO number NOT NULL,
	-- 일반회원 아이디와 동일
	ID varchar2(15 char) NOT NULL,
	PRIMARY KEY (RESERVE_NO)
);


CREATE TABLE RESERVE_CANCEL
(
	-- 예약 일련번호와 동일
	RESERVE_NO number NOT NULL,
	CANCEL_PRICE number,
	CANCEL_COMMENT nvarchar2(100),
	PRIMARY KEY (RESERVE_NO)
);


CREATE TABLE SC_ADMIN
(
	ID varchar2(15 char) NOT NULL,
	-- 암호화값
	PWD varchar2(200 char) NOT NULL,
	ADMIN_NAME nvarchar2(10) NOT NULL,
	-- 마스터관리자(M), CS관리자(C), 통계관리자(A)
	ADMIN_LEVEL char(1 char) NOT NULL,
	REGIDATE date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (ID)
);


CREATE TABLE SERVICEINFO_HOSTINFO
(
	NO number NOT NULL,
	CATEGORY nvarchar2(20) NOT NULL,
	TITLE nvarchar2(50) NOT NULL,
	NAME nvarchar2(10) NOT NULL,
	POSTDATE date DEFAULT SYSDATE NOT NULL,
	CONTENT clob,
	ID varchar2(15 char) NOT NULL,
	PRIMARY KEY (NO)
);


CREATE TABLE SERVICEINFO_NORMALINFO
(
	NO number NOT NULL,
	CATEGORY nvarchar2(20) NOT NULL,
	CONTENT nvarchar2(500) NOT NULL,
	TITLE nvarchar2(50) NOT NULL,
	NAME nvarchar2(10) NOT NULL,
	POSTDATE date DEFAULT SYSDATE NOT NULL,
	ID varchar2(15 char) NOT NULL,
	PRIMARY KEY (NO)
);


CREATE TABLE SPACE
(
	-- 공간 일련번호와 동일
	-- 
	SPACE_NO number NOT NULL,
	SPACE_NAME nvarchar2(18),
	HEART number,
	-- 회의실, 파티룸, 공연장, 다목적룸 등등
	SPACE_TYPE nvarchar2(100),
	facilities varchar2(100),
	INTRO_MAIN nvarchar2(27),
	INTRO_DETAIL nvarchar2(500),
	ADDRESS nvarchar2(150),
	-- 최대 5개 단어 나열
	SPACE_TAG nvarchar2(100),
	IMG_MAIN varchar2(1000 char),
	MAIL varchar2(30 char),
	-- 휴대폰번호 또는 지역번호
	PHONE varchar2(15),
	sigungu nvarchar2(20),
	-- 호스트 아이디와 동일
	ID varchar2(15 char) NOT NULL,
	PRIMARY KEY (SPACE_NO)
);


CREATE TABLE SPACE_REFUND
(
	-- 공간 일련번호와 동일
	SPACE_NO number NOT NULL,
	-- 0.0~1.0 (0.1단위)
	LEFTDAY8 number(2,1) NOT NULL,
	-- 0.0~1.0 (0.1단위)
	LEFTDAY7 number(2,1) NOT NULL,
	-- 0.0~1.0 (0.1단위)
	LEFTDAY6 number(2,1) NOT NULL,
	-- 0.0~1.0 (0.1단위)
	LEFTDAY5 number(2,1) NOT NULL,
	-- 0.0~1.0 (0.1단위)
	LEFTDAY4 number(2,1) NOT NULL,
	-- 0.0~1.0 (0.1단위)
	LEFTDAY3 number(2,1) NOT NULL,
	-- 0.0~1.0 (0.1단위)
	LEFTDAY2 number(2,1) NOT NULL,
	-- 0.0~1.0 (0.1단위)
	LEFTDAY1 number(2,1) NOT NULL,
	-- 0.0~1.0 (0.1단위)
	LEFTDAY0 number(2,1) NOT NULL,
	PRIMARY KEY (SPACE_NO)
);


CREATE TABLE SPACE_RESERVE_INFO
(
	-- 공간 일련번호와 동일
	SPACE_NO number NOT NULL,
	MIN_DAY number,
	MAX_DAY number,
	MIN_PERSON number,
	MAX_PERSON number,
	-- 공간당가격(S) OR 1인당가격(P)
	PRICE_STANDARD char(1 char),
	PRICE_WEEKDAY number,
	-- 개당 최대 100자, 최대 10개
	PRECAUTION nvarchar2(1000),
	-- 시간단위(T), 일단위(D)
	TIME_OR_DAY char(1 char),
	-- 00:00~24:00
	OPER_TIME varchar2(12 char),
	REGULARLY_CLOSE nvarchar2(50),
	PRIMARY KEY (SPACE_NO)
);


CREATE TABLE USER_CREDIT
(
	CREDIT_NO number NOT NULL,
	-- 획득(G), 사용(U)
	CREDIT_TYPE char(1 char),
	REGIDATE date DEFAULT SYSDATE,
	CONTENT nvarchar2(100),
	PRICE number,
	-- 일반회원 아이디와 동일
	ID varchar2(15 char) NOT NULL,
	-- 예약 고유번호와 동일
	RESERVE_NO number NOT NULL,
	PRIMARY KEY (CREDIT_NO)
);


CREATE TABLE USER_HOST
(
	-- 네아로에서 얻어옴
	ID varchar2(15 char) NOT NULL,
	H_NICKNAME nvarchar2(15),
	INTRODUCE nvarchar2(30),
	-- 동의(Y), 비동의(N)
	H_ALARM_SMS char(1 char) NOT NULL,
	-- 동의(Y), 비동의(N)
	H_ALARM_MAIL char(1 char) NOT NULL,
	PRIMARY KEY (ID)
);


CREATE TABLE USER_HOST_IMG
(
	-- 호스트 회원 아이디와 동일
	ID varchar2(15 char) NOT NULL,
	IMG varchar2(100 char),
	PRIMARY KEY (ID)
);


CREATE TABLE USER_NORMAL
(
	-- 네아로에서 얻어옴
	ID varchar2(15 char) NOT NULL,
	-- 네아로에서 얻어옴
	-- (미설정인 경우, 네아로에서 기본 이미지 경로를 얻어옴)
	IMG varchar2(160 char),
	-- 네아로에서 얻어옴
	N_NICKNAME nvarchar2(15),
	-- 네아로에서 얻어옴
	NAME nvarchar2(10),
	-- 네아로에서 얻어옴
	MAIL varchar2(30 char),
	-- 남자(M), 여자(F)
	GENDER char(1 char),
	-- 네아로에서 얻어옴   ex. 20-29
	AGE varchar2(5 char),
	PHONE varchar2(11 char),
	-- 동의(Y), 비동의(N)
	N_ALARM_SMS char(1 char) NOT NULL,
	-- 동의(Y), 비동의(N)
	N_ALARM_MAIL char(1 char) NOT NULL,
	CREDIT number,
	GRADE nvarchar2(10),
	PRIMARY KEY (ID)
);


CREATE TABLE USER_QUESTION
(
	NO number NOT NULL,
	QUESTION_TYPE nvarchar2(5),
	QUESTION_TITLE nvarchar2(20),
	QUESTION_CONTENT nvarchar2(300),
	REGIDATE date DEFAULT SYSDATE,
	STATE number,
	-- 네아로에서 얻어옴
	ID varchar2(15 char) NOT NULL,
	PRIMARY KEY (NO)
);



/* Create Foreign Keys */

ALTER TABLE RESERVE_CANCEL
	ADD FOREIGN KEY (RESERVE_NO)
	REFERENCES RESERVE (RESERVE_NO)
;


ALTER TABLE USER_CREDIT
	ADD FOREIGN KEY (RESERVE_NO)
	REFERENCES RESERVE (RESERVE_NO)
;


ALTER TABLE ADMIN_ANSWER
	ADD FOREIGN KEY (ID)
	REFERENCES SC_ADMIN (ID)
;


ALTER TABLE HELP
	ADD FOREIGN KEY (ID)
	REFERENCES SC_ADMIN (ID)
;


ALTER TABLE NOTICE
	ADD FOREIGN KEY (ID)
	REFERENCES SC_ADMIN (ID)
;


ALTER TABLE SERVICEINFO_HOSTINFO
	ADD FOREIGN KEY (ID)
	REFERENCES SC_ADMIN (ID)
;


ALTER TABLE SERVICEINFO_NORMALINFO
	ADD FOREIGN KEY (ID)
	REFERENCES SC_ADMIN (ID)
;


ALTER TABLE RESERVE
	ADD FOREIGN KEY (SPACE_NO)
	REFERENCES SPACE (SPACE_NO)
;


ALTER TABLE SPACE_REFUND
	ADD FOREIGN KEY (SPACE_NO)
	REFERENCES SPACE (SPACE_NO)
;


ALTER TABLE SPACE_RESERVE_INFO
	ADD FOREIGN KEY (SPACE_NO)
	REFERENCES SPACE (SPACE_NO)
;


ALTER TABLE SPACE
	ADD FOREIGN KEY (ID)
	REFERENCES USER_HOST (ID)
;


ALTER TABLE USER_HOST_IMG
	ADD FOREIGN KEY (ID)
	REFERENCES USER_HOST (ID)
;


ALTER TABLE RESERVE
	ADD FOREIGN KEY (ID)
	REFERENCES USER_NORMAL (ID)
;


ALTER TABLE USER_CREDIT
	ADD FOREIGN KEY (ID)
	REFERENCES USER_NORMAL (ID)
;


ALTER TABLE USER_HOST
	ADD FOREIGN KEY (ID)
	REFERENCES USER_NORMAL (ID)
;


ALTER TABLE USER_QUESTION
	ADD FOREIGN KEY (ID)
	REFERENCES USER_NORMAL (ID)
;


ALTER TABLE ADMIN_ANSWER
	ADD FOREIGN KEY (NO)
	REFERENCES USER_QUESTION (NO)
;



/* Comments */

COMMENT ON COLUMN ADMIN_ANSWER.NO IS '문의 일련변호와 동일함';
COMMENT ON COLUMN FCM_TOKEN.TOKEN_INDEX IS '1씩 늘어나게 시퀀스 생성하기';
COMMENT ON COLUMN FCM_TOKEN.ID IS '외부키 연결 없음.';
COMMENT ON COLUMN HELP.CONTENT IS '웹에디터로 이미지경로, 링크버튼 등 추가';
COMMENT ON COLUMN HELP.NORMAL_OR_HOST IS '일반(N), 호스트(H)';
COMMENT ON COLUMN NOTICE.CONTENT IS '웹에디터로 이미지경로, 링크버튼 등 추가';
COMMENT ON COLUMN NOTICE.NORMAL_OR_HOST IS '일반(N), 호스트(H)';
COMMENT ON COLUMN RESERVE.STATUS IS '예약확정, 승인대기, 결제대기, 추가예약(예약변경?), 이용완료, 취소환불';
COMMENT ON COLUMN RESERVE.RESERVE_DATE IS '최소1일, 최대30일(13자*최대30일 + 구분자* 최대29개)';
COMMENT ON COLUMN RESERVE.RESERVE_TIME IS '00:00~24:00';
COMMENT ON COLUMN RESERVE.SPACE_NO IS '공간 일련번호와 동일
';
COMMENT ON COLUMN RESERVE.ID IS '일반회원 아이디와 동일';
COMMENT ON COLUMN RESERVE_CANCEL.RESERVE_NO IS '예약 일련번호와 동일';
COMMENT ON COLUMN SC_ADMIN.PWD IS '암호화값';
COMMENT ON COLUMN SC_ADMIN.ADMIN_LEVEL IS '마스터관리자(M), CS관리자(C), 통계관리자(A)';
COMMENT ON COLUMN SPACE.SPACE_NO IS '공간 일련번호와 동일
';
COMMENT ON COLUMN SPACE.SPACE_TYPE IS '회의실, 파티룸, 공연장, 다목적룸 등등';
COMMENT ON COLUMN SPACE.SPACE_TAG IS '최대 5개 단어 나열';
COMMENT ON COLUMN SPACE.PHONE IS '휴대폰번호 또는 지역번호';
COMMENT ON COLUMN SPACE.ID IS '호스트 아이디와 동일';
COMMENT ON COLUMN SPACE_REFUND.SPACE_NO IS '공간 일련번호와 동일';
COMMENT ON COLUMN SPACE_REFUND.LEFTDAY8 IS '0.0~1.0 (0.1단위)';
COMMENT ON COLUMN SPACE_REFUND.LEFTDAY7 IS '0.0~1.0 (0.1단위)';
COMMENT ON COLUMN SPACE_REFUND.LEFTDAY6 IS '0.0~1.0 (0.1단위)';
COMMENT ON COLUMN SPACE_REFUND.LEFTDAY5 IS '0.0~1.0 (0.1단위)';
COMMENT ON COLUMN SPACE_REFUND.LEFTDAY4 IS '0.0~1.0 (0.1단위)';
COMMENT ON COLUMN SPACE_REFUND.LEFTDAY3 IS '0.0~1.0 (0.1단위)';
COMMENT ON COLUMN SPACE_REFUND.LEFTDAY2 IS '0.0~1.0 (0.1단위)';
COMMENT ON COLUMN SPACE_REFUND.LEFTDAY1 IS '0.0~1.0 (0.1단위)';
COMMENT ON COLUMN SPACE_REFUND.LEFTDAY0 IS '0.0~1.0 (0.1단위)';
COMMENT ON COLUMN SPACE_RESERVE_INFO.SPACE_NO IS '공간 일련번호와 동일';
COMMENT ON COLUMN SPACE_RESERVE_INFO.PRICE_STANDARD IS '공간당가격(S) OR 1인당가격(P)';
COMMENT ON COLUMN SPACE_RESERVE_INFO.PRECAUTION IS '개당 최대 100자, 최대 10개';
COMMENT ON COLUMN SPACE_RESERVE_INFO.TIME_OR_DAY IS '시간단위(T), 일단위(D)';
COMMENT ON COLUMN SPACE_RESERVE_INFO.OPER_TIME IS '00:00~24:00';
COMMENT ON COLUMN USER_CREDIT.CREDIT_TYPE IS '획득(G), 사용(U)';
COMMENT ON COLUMN USER_CREDIT.ID IS '일반회원 아이디와 동일';
COMMENT ON COLUMN USER_CREDIT.RESERVE_NO IS '예약 고유번호와 동일';
COMMENT ON COLUMN USER_HOST.ID IS '네아로에서 얻어옴';
COMMENT ON COLUMN USER_HOST.H_ALARM_SMS IS '동의(Y), 비동의(N)';
COMMENT ON COLUMN USER_HOST.H_ALARM_MAIL IS '동의(Y), 비동의(N)';
COMMENT ON COLUMN USER_HOST_IMG.ID IS '호스트 회원 아이디와 동일';
COMMENT ON COLUMN USER_NORMAL.ID IS '네아로에서 얻어옴';
COMMENT ON COLUMN USER_NORMAL.IMG IS '네아로에서 얻어옴
(미설정인 경우, 네아로에서 기본 이미지 경로를 얻어옴)';
COMMENT ON COLUMN USER_NORMAL.N_NICKNAME IS '네아로에서 얻어옴';
COMMENT ON COLUMN USER_NORMAL.NAME IS '네아로에서 얻어옴';
COMMENT ON COLUMN USER_NORMAL.MAIL IS '네아로에서 얻어옴';
COMMENT ON COLUMN USER_NORMAL.GENDER IS '남자(M), 여자(F)';
COMMENT ON COLUMN USER_NORMAL.AGE IS '네아로에서 얻어옴   ex. 20-29';
COMMENT ON COLUMN USER_NORMAL.N_ALARM_SMS IS '동의(Y), 비동의(N)';
COMMENT ON COLUMN USER_NORMAL.N_ALARM_MAIL IS '동의(Y), 비동의(N)';
COMMENT ON COLUMN USER_QUESTION.ID IS '네아로에서 얻어옴';



