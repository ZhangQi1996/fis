package com.fis.controller;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fis.service.PictureService;

@Controller
public class PictureController {
	
	@Autowired
	private PictureService pictureService;
	
	@RequestMapping("/picture/get")
	@ResponseBody
	public Map<String, Object> getPictureInfoFromLocal(HttpServletRequest request){
		ServletContext context = request.getSession().getServletContext();
        return pictureService.getPictureFromLocal(context);
	}
	
	
	@RequestMapping(value="/picture/upload",method=RequestMethod.POST)  
    public @ResponseBody Map<String, String> upLoadPic(HttpServletRequest request){  
		ServletContext context = request.getSession().getServletContext();
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		MultiValueMap<String, MultipartFile> multiFileMap = multipartRequest.getMultiFileMap(); 
        return pictureService.upLoadPicToLocal(multiFileMap, context);
    }  
	
}
