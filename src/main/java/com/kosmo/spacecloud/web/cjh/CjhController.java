package com.kosmo.spacecloud.web.cjh;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.spacecloud.impl.cjh.CjhTestServiceImpl;

@Controller
public class CjhController {
	
	@Resource(name="cjhService")
	private CjhTestServiceImpl service;

	@RequestMapping("/CJH/ControllerTest.do")
	public String controllerTestCJH(Model model) throws Exception{
		System.out.println("CJH 컨트롤러 테스트 요청으로 들어옴.");
		return "/scmain/space/Template";
	}
	
	@RequestMapping("/Normal/spaceview.do")
	public String spaceView(Model model) throws Exception{
		System.out.println("공간뷰 컨트롤러로 들어옴.");
		return "/scmain/space/psy/SpaceView";
	}
	
}
