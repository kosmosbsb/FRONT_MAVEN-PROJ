package com.kosmo.spacecloud.impl.cjh;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;

public class CjhDAO {
	
	@Resource(name="sqlMapper_CJH")
	private SqlSessionTemplate sqlMapper_CJH;
}
