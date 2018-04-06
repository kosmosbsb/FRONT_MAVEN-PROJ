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
	public List<PsyTestDTO> reserveView(String rn) {
		return sqlMapper_PSY.selectList("reserveView",rn);
	}

	@Override
	public List<PsyTestDTO> reserveViewReserver(String rn) {
		return sqlMapper_PSY.selectList("reserveViewReserver",rn);
	}

	@Override
	public List<PsyTestDTO> reserveViewRefund(String sn) {
		return sqlMapper_PSY.selectList("reserveViewRefund",sn);
	}

	@Override
	public List<PsyTestDTO> reserveViewSpace(String sn) {
		return sqlMapper_PSY.selectList("reserveViewSpace",sn);
	}
	@Override
	public List<PsyTestDTO> reserveViewMoney(String rn) {
		return sqlMapper_PSY.selectList("reserveViewMoney",rn);
	}

	public List<PsyTestDTO> reserveLoginlist(String nickname) {
		return sqlMapper_PSY.selectList("reserveLoginlist",nickname);
	}

	public int reserveCancel(PsyTestDTO dto) {
		return sqlMapper_PSY.insert("reserveCancel",dto);
	}

	public int reserveInsert(PsyTestDTO dto) {
		return sqlMapper_PSY.insert("reserveInsert",dto);
	}

	public List<PsyTestDTO> reserveTest(String nickname) {
		return sqlMapper_PSY.selectList("reserveTest",nickname);
	}

}
