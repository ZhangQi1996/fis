package com.fis.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fis.domain.IpAddressInfo;
import com.fis.service.IpService;

@Controller
public class IpController {

	@Autowired
	private IpService ipService;
	
	@RequestMapping("/ip/local")
	@ResponseBody
	public Map<String, Object> getIpInfoByLocal(HttpServletRequest request){
		String ip = request.getRemoteAddr();
		Map<String, Object> map = ipService.getIpInfoByIp(ip);
		System.out.println(map);
		return map;
	}
	
	@RequestMapping("/ip/{ip}/query")
	@ResponseBody
	public Map<String, Object> getIpInfoByIp(@PathVariable String ip){
        return ipService.getIpInfoByIp(ip);
	}
}
