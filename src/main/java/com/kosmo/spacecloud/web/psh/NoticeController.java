package com.kosmo.spacecloud.web.psh;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.spacecloud.impl.psh.NoticeServiceImpl;
import com.kosmo.spacecloud.service.psh.NoticeDTO;
@Controller
public class NoticeController {
	
	@Resource(name="noticeService")
	private NoticeServiceImpl service;
	
	@RequestMapping("/Notice/List.do")
	public String list(Model model)throws Exception{
		List<NoticeDTO> list=service.selectList();
		model.addAttribute("noticeList",list);
		
		for(NoticeDTO dto:list) {
			System.out.println(dto.getNotice_no());
		}
		
		
		return "/scmain/board/notice/notice";
	}
}
