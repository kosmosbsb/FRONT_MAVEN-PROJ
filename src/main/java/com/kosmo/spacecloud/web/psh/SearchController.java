package com.kosmo.spacecloud.web.psh;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.spacecloud.impl.psh.SearchServiceImpl;
import com.kosmo.spacecloud.service.psh.SearchDTO;

@Controller
public class SearchController {
	@Resource(name="searchService")
	private SearchServiceImpl service;
	
	@RequestMapping("/Search/Search.do")
	public String list(Model model,@RequestParam Map map)throws Exception{
		List<SearchDTO> list=service.selectList(map.get("searchSpace").toString());
		
		for(SearchDTO tempdto : list) {
			System.out.println("list:"+tempdto.getSpace_type());
		}
		
		model.addAttribute("spaceList",list);
		model.addAttribute("searchSpace",map.get("searchSpace").toString());
		
		
		return "/scmain/board/search/Search";
	}
	
}
