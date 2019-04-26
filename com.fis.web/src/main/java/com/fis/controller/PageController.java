package com.fis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class PageController {
	
	@RequestMapping("/home")
	public String showIndex(){
		return "index";
	}
	
	@RequestMapping("/{page}")
	public String showPage(@PathVariable String page){
		return page;
	}
}
