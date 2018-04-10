package com.kosmo.spacecloud.khw;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.spacecloud.service.khw.SpaceDTO;
import com.kosmo.spacecloud.service.khw.SpaceService;

@Service("spaceService")
public class SpaceServiceImpl implements SpaceService{
	
	@Resource(name="spaceDAO")
	private SpaceDAO dao;

	@Override
	public List<SpaceDTO> selectList(String searchWord) {
		return dao.selectList(searchWord);
	}


}
