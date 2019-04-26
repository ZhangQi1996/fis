package com.fis.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;
import org.springframework.web.multipart.MultipartFile;

import com.fis.service.PictureService;
@Service
public class PictureServiceImpl implements PictureService {

	public static String picDir = "/myapp/img/";
	
	@Override
	public Map<String, Object> getPictureFromLocal(ServletContext context) {
		Map<String, Object> picMap = new HashMap<String, Object>();
		if(context.getAttribute("picNameList") == null)
		{
			try {
				File file=new File(picDir);
				List<String> picNameList = new ArrayList<String>();
				picMap.put("count", file.list().length); //长度是整型值
				for (String name : file.list()) {
					picNameList.add(name);
				}
				picMap.put("pic_name_list", picNameList);
				picMap.put("status", "true");
			} catch (Exception e) {
				picMap.put("status", "false");
			}
		}
		else {
			List<String> picNameList = (List<String>)context.getAttribute("picNameList");
			picMap.put("count", picNameList.size()); //长度是整型值
			picMap.put("pic_name_list", picNameList);
			picMap.put("status", "true");
		}
		return picMap;
	}

	@Override
	public Map<String, String> upLoadPicToLocal(MultiValueMap<String, MultipartFile> multiFileMap, ServletContext context) {
		Map<String, String> map = new HashMap<String, String>();
	    try {
	    	List<MultipartFile> list = new ArrayList<MultipartFile>();
	    	for (String key : multiFileMap.keySet()) { 
	            List<MultipartFile> MultipartFiles = multiFileMap.get(key);  
	            for(MultipartFile multipartFile :MultipartFiles){
	            	 list.add(multipartFile);
	            }  
	        }  
	    	if(list.size() == 0) {
	    		map.put("status", "false");
	        	map.put("error", "图片上传0张");
	    	}
	    	else {
	    		try {
					File fi = new File(picDir);
					for(String name : fi.list()) {
						File del_f = new File(picDir + name);
						del_f.delete();
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
	    		List<String> picNameList = new ArrayList<String>();
	    		for(int i = 0; i < list.size(); i++) {
	    			String filename = UUID.randomUUID() + ".jpg";   //仅支持jpg格式文件
	    			picNameList.add(filename);
	                File file = new File(picDir + filename); 
	                list.get(i).transferTo(file);//上传至服务器  
	    		}
	    		map.put("status", "true");
	    		context.setAttribute("picNameList", picNameList);
	    		map.put("success", picNameList.toString());
	    	}
	        map.put("count", String.valueOf(list.size()));
	    }catch (Exception e) {
	    	map.put("status", "false");
	    	map.put("error", "图片上传异常");
		}
	    return map;
	}
	
}
