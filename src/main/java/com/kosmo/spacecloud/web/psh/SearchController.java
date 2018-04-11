package com.kosmo.spacecloud.web.psh;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
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
	public String list(Model model,@RequestParam Map map, HttpServletRequest req)throws Exception{
		
		List<SearchDTO> list;
		
		if(req.getMethod().toUpperCase().equals("GET")) {
			list=service.selectList(req.getParameter("searchWord"));
			model.addAttribute("searchSpace",req.getParameter("searchWord"));
		}
		else{
			list=service.selectList(map.get("searchSpace").toString());
			model.addAttribute("searchSpace",map.get("searchSpace").toString());
		}
		//
		for(SearchDTO tempdto : list) {
			System.out.println("list:"+tempdto.getAddress());
		}
		//
		model.addAttribute("spaceList",list);
		
		JSONObject jsonObj;
		JSONArray jsonArr = new JSONArray();
		
		for(SearchDTO dto : list) {
			jsonObj = new JSONObject();
			jsonObj.put("address", dto.getAddress()); //일단 주소값만
			jsonObj.put("space_name", dto.getSpace_name());//공간명도
			jsonObj.put("space_no", dto.getSpace_no());
			jsonArr.add(jsonObj);
		}
		
		model.addAttribute("jsonspaceList",jsonArr);
		
		return "/scmain/board/search/Search";
	}
	
}
