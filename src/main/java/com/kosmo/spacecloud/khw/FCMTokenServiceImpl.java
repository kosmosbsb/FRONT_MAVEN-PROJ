package com.kosmo.spacecloud.khw;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.spacecloud.service.khw.FCMTokenService;

@Service("fCMTokenService")
public class FCMTokenServiceImpl implements FCMTokenService{

	@Resource(name="FCMTokenDAO")
	private FCMTokenDAO dao; 
	
	@Override
	public int insertToken(String token) {
		return dao.insertToken(token);
	}

	@Override
	public int tokenIDmapper(String token, String id) {
		return dao.tokenIDmapper(token, id);
	}
	

}
