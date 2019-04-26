package com.fis.service.impl;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.fis.domain.IpAddressInfo;
import com.fis.pojo.WeatherResult;
import com.fis.service.IpService;
import com.fis.service.WeatherService;
import com.google.gson.Gson;
@Service
public class WeatherServiceImpl implements WeatherService {
	
	//private static String key = "11d4292b844b9a8cbd042a78c149acbb";
	private static String key = "769c8589036a40ad897a82dc23557588";
	
	public WeatherResult weatherQueryByCityName(String cityName) {
		BufferedReader reader = null;
	    String result = null;
	    StringBuffer sbf = new StringBuffer();
	    WeatherResult weatherResult = null;
	 //   String httpUrl = "http://v.juhe.cn/weather/index?format=2&cityname=" + cityName + "&key=" + WeatherServiceImpl.key;
	    String httpUrl = "http://api.avatardata.cn/Weather/Query?key=" + WeatherServiceImpl.key + "&cityname=" + cityName;
	    try {
	        URL url = new URL(httpUrl);
	        HttpURLConnection connection = (HttpURLConnection) url
	                .openConnection();
	        connection.setRequestMethod("GET");
	        //apikey��HTTP header
	        //connection.setRequestProperty("apikey",  "apikey");
	        connection.connect();
	        InputStream is = connection.getInputStream();
	        reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
	        String strRead = null;
	        while ((strRead = reader.readLine()) != null) {
	            sbf.append(strRead);
	            sbf.append("\r\n");
	        }
	        reader.close();
	        result = sbf.toString();
	        Gson gson = new Gson();
	        weatherResult = gson.fromJson(result, WeatherResult.class);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		return weatherResult;
		
	}

	@Override
	public WeatherResult weatherQueryByIp(String ip, IpService ipService) {
		WeatherResult weatherResult = null;
		Map<String, Object> ipInfo = ipService.getIpInfoByIp(ip);
		if(!"success".equals(ipInfo.get("status"))){ //内部异常
			weatherResult = new WeatherResult();
			weatherResult.setReason("参数不正确");
		}else{
			@SuppressWarnings("unchecked")
			IpAddressInfo  addressInfo = (IpAddressInfo) ipInfo.get("ip_info");
			if(addressInfo != null){
				if(addressInfo.getD() != null){
					weatherResult = this.weatherQueryByCityName(addressInfo.getD());
					if("参数不正确".equals(weatherResult.getReason())){
						weatherResult = this.weatherQueryByCityName(addressInfo.getC());
					}else;
				}
				else
					weatherResult = this.weatherQueryByCityName(addressInfo.getC());			
			}else{
				weatherResult = new WeatherResult();
				weatherResult.setReason("参数不正确");
			}
		}
		return weatherResult;
	}

}
