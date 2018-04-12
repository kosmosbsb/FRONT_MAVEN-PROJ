package com.kosmo.spacecloud.khw;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.spacecloud.service.khw.QuestionDTO;
import com.kosmo.spacecloud.service.khw.QuestionService;

@Service("questionService")
public class QuestionServiceImpl implements QuestionService{
	
	@Resource(name="questionDAO")
	private QuestionDAO dao;

	@Override
	public int write(QuestionDTO dto) {
		return dao.write(dto);
	}

	@Override
	public List<QuestionDTO> question_List(String id) {
		return dao.question_List(id);
	}

	@Override
	public List<QuestionDTO> answer_List(String id) {
		return dao.answer_List(id);
	}


}
