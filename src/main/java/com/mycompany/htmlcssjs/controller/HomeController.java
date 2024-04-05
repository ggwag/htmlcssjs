package com.mycompany.htmlcssjs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



//@Slf4j

@Controller

public class HomeController {
	@RequestMapping("/")
	public String index() {
		//log.info("실행");
		return "home";
		
	}
}
