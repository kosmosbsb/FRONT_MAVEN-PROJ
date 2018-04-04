package com.kosmo.spacecloud.khw;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.spacecloud.service.khw.QuestionDTO;
import com.kosmo.spacecloud.service.khw.QuestionService;

@Repository
public class QuestionDAO implements QuestionService{
	//SqlSessionTemplate객체 주입]
	@Resource(name="sqlMapper_KHW")
	private SqlSessionTemplate sqlMapper_KHW;

	@Override
	public int write(QuestionDTO dto) {
		return sqlMapper_KHW.insert("questionInsert",dto);
	}

}
