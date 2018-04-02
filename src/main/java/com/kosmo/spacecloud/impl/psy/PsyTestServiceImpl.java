package com.kosmo.spacecloud.impl.psy;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.spacecloud.service.psh.NoticeDTO;
import com.kosmo.spacecloud.service.psh.NoticeService;
import com.kosmo.spacecloud.service.psy.PsyTestDTO;
import com.kosmo.spacecloud.service.psy.PsyTestService;

@Service("psytestService")
public class PsyTestServiceImpl implements PsyTestService{
	
	@Resource(name="psyTestDAO")
	private PsyTestDAO dao;
	
	@Override
	public List<PsyTestDTO> selectList() {
		return dao.selectList();
	}

}
