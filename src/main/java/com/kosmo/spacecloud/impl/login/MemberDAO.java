package com.kosmo.spacecloud.impl.login;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.spacecloud.service.login.MemberDTO;
import com.kosmo.spacecloud.service.login.MemberService;
import com.kosmo.spacecloud.service.psh.NoticeDTO;
import com.kosmo.spacecloud.service.psh.NoticeService;

@Repository
public class MemberDAO implements MemberService{
	//SqlSessionTemplate객체 주입]
	@Resource(name="sqlMapper_KHW")
	private SqlSessionTemplate sqlMapper_KHW;

	@Override
	public int insert(MemberDTO dto) {
		return sqlMapper_KHW.insert("memberInsert",dto);
	}

	@Override
	public boolean isMember(String id) {
		
		boolean memberFlag = (Integer)sqlMapper_KHW.selectOne("memberIsMember",id) == 1 ? true : false;

		return memberFlag;
	}

	@Override
	public boolean isHost(String id) {
		
		boolean hostFlag = (Integer)sqlMapper_KHW.selectOne("memberIsHost",id) == 1 ? true : false;
		
		return hostFlag;
	}

	@Override
	public int insertHost(MemberDTO dto) {
		
		return sqlMapper_KHW.insert("memberHostInsert",dto);
	}

	@Override
	public int insertHostImg(MemberDTO dto) {
		return sqlMapper_KHW.insert("memberHostImgInsert",dto);
	}

	@Override
	public String getHostImg(String id) {
		
		String hostImgFileName = sqlMapper_KHW.selectOne("getMemberHostImg",id);
		
		return hostImgFileName;
	}

	@Override
	public MemberDTO getHost(String id) {
		return sqlMapper_KHW.selectOne("getMemberHost",id);
	}


	
	
}
