package com.fis.service;

import com.fis.pojo.WeatherResult;
public interface WeatherService {
	public WeatherResult weatherQueryByCityName(String cityName);
	
	public WeatherResult weatherQueryByIp(String ip, IpService ipService);
}
