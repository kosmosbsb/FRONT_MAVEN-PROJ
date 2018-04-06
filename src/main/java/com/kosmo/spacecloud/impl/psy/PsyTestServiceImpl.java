package com.kosmo.spacecloud.impl.psy;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.http.HttpRequest;
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

	@Override
	public List<PsyTestDTO> reserveView(String rn) {
		return dao.reserveView(rn);
	}

	@Override
	public List<PsyTestDTO> reserveViewReserver(String rn) {
		return dao.reserveViewReserver(rn);
	}

	@Override
	public List<PsyTestDTO> reserveViewRefund(String sn) {
		return dao.reserveViewRefund(sn);
	}

	@Override
	public List<PsyTestDTO> reserveViewSpace(String sn) {
		return dao.reserveViewSpace(sn);
	}

	@Override
	public List<PsyTestDTO> reserveViewMoney(String rn) {
		return dao.reserveViewMoney(rn);
	}

	public List<PsyTestDTO> reserveLoginlist(String nickname) {
		return dao.reserveLoginlist(nickname);
	}

	public int reserveCancel(PsyTestDTO dto) {
		return dao.reserveCancel(dto);
	}

	public int reserveInsert(PsyTestDTO dto) {
		return dao.reserveInsert(dto);
		
	}

	public List<PsyTestDTO> reserveTest(String nickname) {
		return dao.reserveTest(nickname);
	}

}
