package com.fis.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fis.domain.PointInfo;
import com.fis.service.PointService;

@Controller
public class PointController {

	@Autowired
	PointService pointService;
	
	@RequestMapping("/point/{pointId}")
	@ResponseBody
	PointInfo findPointInfoByPointId(@PathVariable String pointId){
		return pointService.findPointInfoByPointId(pointId);
	}
	
	@RequestMapping("/modelRes/{pointId}")
	@ResponseBody
	Map<String, String> getModelResultByPointId(@PathVariable String pointId){
		return pointService.getModelResultByPointId(pointId);
	}
}
