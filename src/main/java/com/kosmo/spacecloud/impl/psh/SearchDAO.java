package com.kosmo.spacecloud.impl.psh;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.spacecloud.service.psh.SearchDTO;
import com.kosmo.spacecloud.service.psh.SearchService;
@Repository
public class SearchDAO implements SearchService{

	@Resource(name="sqlMapper_PSH")
	private SqlSessionTemplate sqlMapper_PSH;

	@Override
	public List<SearchDTO> selectList(String searchSpace) {
		return sqlMapper_PSH.selectList("searchSelectList",searchSpace);
	}

	@Override
	public List<SearchDTO> selectList() {
		return sqlMapper_PSH.selectList("mainSpaceList");
	}
}
