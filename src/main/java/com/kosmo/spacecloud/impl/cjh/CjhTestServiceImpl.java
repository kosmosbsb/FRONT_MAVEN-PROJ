package com.kosmo.spacecloud.impl.cjh;

import java.util.List;
import java.util.Map;

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

	public List<CjhDTO> selectListsp(String sn) {
		return dao.selectListsp(sn);
	}

	public List<CjhDTO> selectListhost(String sn) {
		return dao.selectListhost(sn);
	}

	public List<CjhDTO> selectListres(String sn) {
		return dao.selectListres(sn);
	}

	@Override
	public int insertSpace(CjhDTO dto) {
		return dao.insertSpace(dto);
	}

	@Override
	public int insertReserveInfo(CjhDTO dto) {
		return dao.insertReserveInfo(dto);
	}

	@Override
	public CjhDTO selectRecentSpace() {
		return dao.selectRecentSpace();
	}

	@Override
	public int updateSpaceImg(Map map) {
		return dao.updateSpaceImg(map);
	}
	
}
