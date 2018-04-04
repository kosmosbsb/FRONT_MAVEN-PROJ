package com.kosmo.spacecloud.khw;

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


}
