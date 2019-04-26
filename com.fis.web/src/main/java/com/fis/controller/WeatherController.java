package com.fis.controller;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fis.pojo.WeatherResult;
import com.fis.service.IpService;
import com.fis.service.WeatherService;
import com.google.gson.Gson;

@Controller
public class WeatherController {
	@Autowired
	private WeatherService weatherService;
	
	@Autowired
	private IpService ipService;

	@RequestMapping("/hello")
	public void sayHello(PrintWriter writer){
		writer.write("hello!");
	}
	
	@RequestMapping("/test/{txt}")
	public void test(PrintWriter writer, @PathVariable String txt){
		writer.write(txt);
	}
	
	@RequestMapping("/weather/{cityName}/query")
	@ResponseBody
	public WeatherResult weatherQueryByCityName(@PathVariable String cityName){
		return weatherService.weatherQueryByCityName(cityName);
	}
	
	@RequestMapping("/weather/local")
	@ResponseBody
	public WeatherResult weatherQueryByIp(HttpServletRequest request){
		String ip = request.getRemoteAddr();
		return weatherService.weatherQueryByIp(ip, ipService);
	}
	
/*	@RequestMapping("/weather/local")  
	 public void weatherQueryByIp(HttpServletRequest req,HttpServletResponse res) {  
	     res.setContentType("text/html;charset=utf-8");  
	     String ip = req.getRemoteAddr();
	     WeatherResult result = weatherService.weatherQueryByIp(ip, ipService);
	     String callback =req.getParameter("callback");//得到js函数名称  
	     Gson gson = new Gson();
	     String json = gson.toJson(result);
	     try {  
	         res.getWriter().write(callback + "(" + json + ")"); //返回jsonp数据  
	     } catch (Exception e) {  
	    	 System.out.println("内部解析错误");
	         e.printStackTrace();  
	     }  
	 }*/
}
