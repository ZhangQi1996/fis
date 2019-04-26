package com.fis.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthScrollBarUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fis.pojo.User;
import com.fis.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping("/login")
	@ResponseBody
	public Map<String, Boolean> login(@RequestParam String id, @RequestParam String password, HttpServletRequest request, HttpServletResponse response){
		User user = loginService.findUserByIdAndPw(id, password);
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		if(user != null){
			request.getSession().setAttribute("user", user);
			map.put("status", true);
		}
		else{
			map.put("status", false);
		}
		return map;
	} 
	
	@RequestMapping("/logOff")
	public String logOff(HttpServletRequest request, HttpServletResponse response){
		request.getSession().removeAttribute("user");
		return "redirect:/page/home";
	}
}
