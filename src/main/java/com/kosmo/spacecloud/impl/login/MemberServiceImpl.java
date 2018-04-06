package com.kosmo.spacecloud.impl.login;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.spacecloud.service.login.MemberDTO;
import com.kosmo.spacecloud.service.login.MemberService;
import com.kosmo.spacecloud.service.psh.NoticeDTO;
import com.kosmo.spacecloud.service.psh.NoticeService;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Resource(name="memberDAO")
	private MemberDAO dao;

	@Override
	public int insert(MemberDTO dto) {
		return dao.insert(dto);
	}

	@Override
	public boolean isMember(String id) {
		return dao.isMember(id);
	}

	@Override
	public boolean isHost(String id) {
		return dao.isHost(id);
	}

	@Override
	public int insertHost(MemberDTO dto) {
		return dao.insertHost(dto);
	}

	@Override
	public int insertHostImg(MemberDTO dto) {
		return dao.insertHostImg(dto);
	}

	@Override
	public String getHostImg(String id) {
		return dao.getHostImg(id);
	}

	@Override
	public MemberDTO getHost(String id) {
		return dao.getHost(id);
	}
	

	
	
}
