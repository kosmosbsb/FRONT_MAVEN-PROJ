package com.kosmo.spacecloud.service.khw;

public interface FCMTokenService {

	//최초 토큰 유입시 저장 (insert)
	int insertToken(String token);
	
	//유저가 로그인할때 저장된 토큰에 매핑 (update)
	int tokenIDmapper(String token, String id);
}
