package com.fis.service.impl;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.fis.domain.IpAddressInfo;
import com.fis.mapper.IpInfoMapper;
import com.fis.service.IpService;
@Service
public class IpServiceImpl implements IpService {
	@Autowired
	private IpInfoMapper infoMapper;
	
	@Override
	public Map<String, Object> getIpInfoByIp(String ip){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ip", ip);
		map.put("status", null);
		try {
			map.put("ip_info", infoMapper.selectByIp(ip).getIpAddressInfo());
			map.replace("status", "success");
		} catch (Exception e) {
			map.replace("status", "参数不正确");
		}finally {
			return map;
		}
	}

}
