package com.fis.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fis.service.PointService;
import com.fis.utils.ExcelUtils;

@Controller
public class ExcelController {
	
	@Autowired
	PointService pointService;
	
	@RequestMapping("/excel")
	public void exportSurface(HttpServletRequest request,  
            HttpServletResponse response) throws Exception {  
		ExcelUtils.exportInspectionRecordSurface(request, response, pointService.getPointInfoList());  
	}  
}
