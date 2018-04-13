package com.kosmo.spacecloud.impl.psh;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.spacecloud.service.psh.HelpDTO;
import com.kosmo.spacecloud.service.psh.HelpService;
@Service("helpService")
public class HelpServiceImpl implements HelpService{

	@Resource(name="helpDAO")
	private HelpDAO dao;
	
	@Override
	public List<HelpDTO> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalCount(Map map) {
		return dao.getTotalCount(map);
	}
	
}
