package com.kosmo.spacecloud.service.khw;

import java.util.List;
import java.util.Map;

import com.kosmo.spacecloud.service.psh.NoticeDTO;

public interface QuestionService {

		int write(QuestionDTO dto); //회원 등록
		//문의 목록
		List<QuestionDTO> question_List(String id); 
		
		List<QuestionDTO> answer_List(String id);
}
