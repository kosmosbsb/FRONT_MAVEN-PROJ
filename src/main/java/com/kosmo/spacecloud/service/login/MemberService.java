package com.kosmo.spacecloud.service.login;

import java.util.List;
import java.util.Map;

public interface MemberService {
		//전체 레코드 수]
		//int getTotalCount(Map map);
		//상세보기용]
		//NoticeDTO selectOne(NoticeDTO dto);
		//입력/수정/삭제용]
		int insert(MemberDTO dto); //회원 등록
/*		int update(NoticeDTO dto);
		int delete(NoticeDTO dto);*/
		
		boolean isMember(String id); //회원여부 확인
		
		boolean isHost(String id); //호스트 등록 여부 확인
		
		int insertHost(MemberDTO dto); //호스트 등록
		
		int insertHostImg(MemberDTO dto); //호스트 이미지 등록
		
		String getHostImg(String id);
		
		MemberDTO getHost(String id);
		
}
