package com.kosmo.spacecloud.impl.psy;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.spacecloud.service.psh.NoticeDTO;
import com.kosmo.spacecloud.service.psh.NoticeService;
import com.kosmo.spacecloud.service.psy.PsyTestDTO;
import com.kosmo.spacecloud.service.psy.PsyTestService;

@Repository
public class PsyTestDAO implements PsyTestService{
	//SqlSessionTemplate객체 주입]
	@Resource(name="sqlMapper_PSY")
	private SqlSessionTemplate sqlMapper_PSY;

	@Override
	public List<PsyTestDTO> selectList() {
		return sqlMapper_PSY.selectList("psySelectList");
	}

	@Override
	public List<PsyTestDTO> reserveView() {
		return sqlMapper_PSY.selectList("reserveView");
	}

	@Override
	public List<PsyTestDTO> reserveViewReserver() {
		return sqlMapper_PSY.selectList("reserveViewReserver");
	}

	@Override
	public List<PsyTestDTO> reserveViewRefund() {
		return sqlMapper_PSY.selectList("reserveViewRefund");
	}

	@Override
	public List<PsyTestDTO> reserveViewSpace() {
		return sqlMapper_PSY.selectList("reserveViewSpace");
	}

	@Override
	public List<PsyTestDTO> reserveViewMoney() {
		return sqlMapper_PSY.selectList("reserveViewMoney");
	}

}