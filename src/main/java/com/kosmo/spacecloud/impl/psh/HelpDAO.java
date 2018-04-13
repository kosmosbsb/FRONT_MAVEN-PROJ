package com.kosmo.spacecloud.impl.psh;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.spacecloud.service.psh.HelpDTO;
import com.kosmo.spacecloud.service.psh.HelpService;
@Repository
public class HelpDAO implements HelpService{

	@Resource(name="sqlMapper_PSH")
	private SqlSessionTemplate sqlMapper_PSH;
	
	@Override
	public List<HelpDTO> selectList(Map map) {
		return sqlMapper_PSH.selectList("helpSelectList", map);
	}

	@Override
	public int getTotalCount(Map map) {
		return sqlMapper_PSH.selectOne("helpTotalCount",map);
	}
	
}
