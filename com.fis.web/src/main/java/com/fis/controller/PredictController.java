package com.fis.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fis.utils.Predict;
@Controller
public class PredictController {
	
	@RequestMapping("/upload_predict")
	@ResponseBody
	public Map<String, Boolean> uploadPredict(@RequestParam Integer type, @RequestParam String time, HttpServletRequest request, HttpServletResponse response){
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		Predict p = new Predict();
		try {
			p.setType(type);
			p.setTime(time);
			if(p.getType() != -1) //仅当type不等于-1时存入队列
				Predict.enqueue(p);
			map.put("status", true);
		}
		catch (Exception e) {
			// TODO: handle exception
			map.put("status", false);
		}
		return map;
	} 
	
	/**
	 * @param time 上一次更新时的时间
	 * @param request
	 * @param response
	 * @return false表示没有更新数据
	 */
	@RequestMapping("/get_predict")
	@ResponseBody
	public Map<String, Object> getPredict(@RequestParam String time, HttpServletRequest request, HttpServletResponse response){
		Map<String, Object> map = new HashMap<String, Object>();
		Predict head = Predict.getQueueHead();
		if(head == null || (head.getTime().equals(time))) {
			map.put("status", false);
		}
		else {
			map.put("status", true);
			head = Predict.dequeue();
			map.put("type", head.getType());
		}
		return map;
	}
}
