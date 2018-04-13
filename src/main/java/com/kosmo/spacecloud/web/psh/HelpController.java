package com.kosmo.spacecloud.web.psh;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.spacecloud.impl.psh.HelpServiceImpl;
import com.kosmo.spacecloud.impl.psh.PagingUtil;
import com.kosmo.spacecloud.service.psh.HelpDTO;

@Controller
public class HelpController {

	@Resource(name="helpService")
	private HelpServiceImpl service;
	
	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@RequestMapping("/help/help.do")
	public String list(Model model,@RequestParam Map map,HttpServletRequest req,@RequestParam(required=false,defaultValue="1") int nowPage)throws Exception{
		
		int totalRecordCount = service.getTotalCount(map);
		// 전체 페이지수]
		int totalPage = (int)Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기]
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		
		
		map.put("start",start);
		map.put("end", end);
		
		System.out.println("start"+start);
		System.out.println("end"+end);
		
		
		List<HelpDTO> list=service.selectList(map);
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount,pageSize,blockPage, nowPage,req.getContextPath()+"/help/help.do?"); 
		
		model.addAttribute("noticeList",list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
		
		System.out.println("페이지 사이즈"+pageSize);
		System.out.println("페이징스트링"+pagingString);
		System.out.println("나우페이지"+nowPage);
		System.out.println("토탈페이지"+totalPage);
		System.out.println("블락페이지"+blockPage);
		System.out.println("토탈레코드카운트"+totalRecordCount);
		
		for(HelpDTO dto:list) {
			System.out.println("찍어"+dto.getNotice_no());
		}
		
		
		return "/scmain/board/help/help";
	}
	
}
