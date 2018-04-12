package com.kosmo.spacecloud.impl.cjh;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.spacecloud.service.cjh.CjhDTO;
import com.kosmo.spacecloud.service.cjh.CjhService;

@Repository
public class CjhDAO implements CjhService{
	
	@Resource(name="sqlMapper_CJH")
	private SqlSessionTemplate sqlMapper_CJH;

	@Override
	public List<CjhDTO> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<CjhDTO> selectListsp(String sn) {
		return sqlMapper_CJH.selectList("selectListsp",sn);
	}

	public List<CjhDTO> selectListhost(String sn) {
		return sqlMapper_CJH.selectList("selectListhost",sn);
	}

	public List<CjhDTO> selectListres(String sn) {
		return sqlMapper_CJH.selectList("selectListres",sn);
	}
}
