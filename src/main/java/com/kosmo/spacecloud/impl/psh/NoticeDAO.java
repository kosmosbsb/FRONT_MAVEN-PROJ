package com.kosmo.spacecloud.impl.psh;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.spacecloud.service.psh.NoticeDTO;
import com.kosmo.spacecloud.service.psh.NoticeService;

@Repository
public class NoticeDAO implements NoticeService{
	//SqlSessionTemplate객체 주입]
	@Resource(name="sqlMapper_PSH")
	private SqlSessionTemplate sqlMapper_PSH;

	@Override
	public List<NoticeDTO> selectList(Map map) {
		return sqlMapper_PSH.selectList("noticeSelectList", map);
	}
	
}
