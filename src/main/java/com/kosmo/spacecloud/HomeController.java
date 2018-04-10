package com.kosmo.spacecloud;

import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosmo.spacecloud.khw.SpaceServiceImpl;
import com.kosmo.spacecloud.service.khw.SpaceDTO;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Resource(name="spaceService")
	private SpaceServiceImpl spaceService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/spacecloud.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		logger.info("Welcome home! The client locale is {}.", locale);
		
		
		List<SpaceDTO> spaceList = spaceService.selectList(" ");
		JSONObject jsonObj;
		JSONArray jsonArr = new JSONArray();

		//json 객체 배열 세팅하기
		for(SpaceDTO dto : spaceList) {
			jsonObj = new JSONObject();
			jsonObj.put("address", dto.getAddress()); //일단 주소값만
			jsonObj.put("space_name", dto.getSpace_name());//공간명도
			jsonArr.add(jsonObj);
		}
		
		model.addAttribute("spaceList",jsonArr); 
		
		
		
		
		return "/scmain/SCMain";
	}
}
