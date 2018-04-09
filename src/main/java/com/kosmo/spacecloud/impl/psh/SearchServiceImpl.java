package com.kosmo.spacecloud.impl.psh;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.spacecloud.service.psh.SearchDTO;
import com.kosmo.spacecloud.service.psh.SearchService;

@Service("searchService")
public class SearchServiceImpl implements SearchService{

	@Resource(name="searchDAO")
	private SearchDAO dao;
	
	@Override
	public List<SearchDTO> selectList(String searchSpace) {
		return dao.selectList(searchSpace);
	}
	
	
}
