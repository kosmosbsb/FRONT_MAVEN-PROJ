package com.kosmo.spacecloud.web.cjh;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.spacecloud.impl.psy.PsyTestServiceImpl;

@Controller
public class CjhController {

	@RequestMapping("/CJH/ControllerTest.do")
	public String controllerTestCJH(Model model) throws Exception{
		System.out.println("CJH 컨트롤러 테스트 요청으로 들어옴.");
		return "/scmain/space/Template";
	}
	
}
