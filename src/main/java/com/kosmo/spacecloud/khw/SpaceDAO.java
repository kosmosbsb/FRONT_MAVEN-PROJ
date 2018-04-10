package com.kosmo.spacecloud.khw;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.spacecloud.service.khw.SpaceDTO;
import com.kosmo.spacecloud.service.khw.SpaceService;


@Repository
public class SpaceDAO implements SpaceService{
	//SqlSessionTemplate객체 주입]
	@Resource(name="sqlMapper_KHW")
	private SqlSessionTemplate sqlMapper_KHW;

	@Override
	public List<SpaceDTO> selectList(String searchWord) {
		return sqlMapper_KHW.selectList("selectSpaceInfo",searchWord);
	}

}
