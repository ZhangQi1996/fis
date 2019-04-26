package com.fis.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
@Controller
public class VideoController {
	@RequestMapping(value="/upload",method=RequestMethod.POST)
    public void upload(@RequestParam("data") String data,@RequestParam("files") MultipartFile file) throws Exception {

       System.out.println(data);
       //如果文件不为空，写入上传路径
       if(!file.isEmpty()) {
           //上传文件路径
           String path = "D:/video";
           //上传文件名
           String filename = file.getOriginalFilename();
           System.out.println(filename);
           File filepath = new File(path,filename);
           //判断路径是否存在，如果不存在就创建一个
           if (!filepath.getParentFile().exists()) { 
               filepath.getParentFile().mkdirs();
           }
           //将上传文件保存到一个目标文件当中
           file.transferTo(new File(path + File.separator + filename));
           System.out.println("success");
       } else {
           System.out.println("error");
       }

    }
}
