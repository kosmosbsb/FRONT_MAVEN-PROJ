package com.kosmo.spacecloud.khw;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.spacecloud.service.khw.FCMTokenService;

@Repository
public class FCMTokenDAO implements FCMTokenService{
	//SqlSessionTemplate객체 주입]
	@Resource(name="sqlMapper_KHW")
	private SqlSessionTemplate sqlMapper_KHW;

	@Override
	public int insertToken(String token) {
		return sqlMapper_KHW.insert("insertToken",token);
	}

	@Override
	public int tokenIDmapper(String token, String id) {
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("token", token);
		map.put("id", id);
		System.out.println(token);
		System.out.println(id);
		
		return sqlMapper_KHW.update("tokenIDmapper",map);
	}
	

}
