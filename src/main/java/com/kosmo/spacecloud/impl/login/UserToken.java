package com.kosmo.spacecloud.impl.login;

import org.springframework.stereotype.Service;


@Service("userToken")
public class UserToken{
	
	private String userToken;

	public String getUserToken() {
		return userToken;
	}

	public void setUserToken(String userToken) {
		this.userToken = userToken;
	}

}
