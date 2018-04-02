package com.kosmo.spacecloud.web.psh;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.spacecloud.impl.psh.PagingUtil;
import com.kosmo.spacecloud.impl.psh.NoticeServiceImpl;
import com.kosmo.spacecloud.service.psh.NoticeDTO;
@Controller
public class NoticeController {
	
	@Resource(name="noticeService")
	private NoticeServiceImpl service;
	
	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@RequestMapping("/Notice/List.do")
	public String list(Model model,HttpServletRequest req,@RequestParam(required=false,defaultValue="1") int nowPage)throws Exception{
		
		int totalRecordCount = service.getTotalCount(null);
		// 전체 페이지수]
		int totalPage = (int)Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기]
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		Map map = new HashMap();
		map.put("start",start);
		map.put("end", end);
		
		List<NoticeDTO> list=service.selectList(map);
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount,pageSize,blockPage, nowPage,req.getContextPath()+"/Notice/List.do?"); 
		
		model.addAttribute("noticeList",list);
		model.addAttribute("pagingString", pagingString);
		
		for(NoticeDTO dto:list) {
			System.out.println(dto.getNotice_no());
		}
		
		
		return "/scmain/board/notice/notice";
	}
}
