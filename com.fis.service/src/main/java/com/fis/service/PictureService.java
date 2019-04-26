package com.fis.service;

import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.util.MultiValueMap;
import org.springframework.web.multipart.MultipartFile;

public interface PictureService {
	
	public Map<String, Object> getPictureFromLocal(ServletContext context);
	
	public Map<String, String> upLoadPicToLocal(MultiValueMap<String, MultipartFile> multiFileMap, ServletContext context);
}
