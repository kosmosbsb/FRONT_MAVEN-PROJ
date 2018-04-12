package com.kosmo.spacecloud.impl.cjh;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.spacecloud.impl.psy.PsyTestDAO;
import com.kosmo.spacecloud.service.cjh.CjhDTO;
import com.kosmo.spacecloud.service.cjh.CjhService;

@Service("cjhService")
public class CjhTestServiceImpl implements CjhService{

	@Resource(name="cjhDAO")
	private CjhDAO dao;

	@Override
	public List<CjhDTO> selectList() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
