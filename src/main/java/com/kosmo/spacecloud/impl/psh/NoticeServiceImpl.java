package com.kosmo.spacecloud.impl.psh;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.spacecloud.service.psh.NoticeDTO;
import com.kosmo.spacecloud.service.psh.NoticeService;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	
	@Resource(name="noticeDAO")
	private NoticeDAO dao;
	
	@Override
	public List<NoticeDTO> selectList() {
		return dao.selectList();
	}

}
