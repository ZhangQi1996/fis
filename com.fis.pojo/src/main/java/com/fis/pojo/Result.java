package com.fis.pojo;

import java.util.List;

public class Result {
	private	RealTime realtime;
	private List<PreWeather> weather;
	private String date;
	private Pm25 pm25;
	private int isForeign; //
//	private Life life; //暂未代码实现

	public RealTime getRealtime() {
		return realtime;
	}
	public Pm25 getPm25() {
		return pm25;
	}
	public void setPm25(Pm25 pm25) {
		this.pm25 = pm25;
	}
	public void setRealtime(RealTime realtime) {
		this.realtime = realtime;
	}

	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getIsForeign() {
		return isForeign;
	}
	public void setIsForeign(int isForeign) {
		this.isForeign = isForeign;
	}
	public List<PreWeather> getWeather() {
		return weather;
	}
	public void setWeather(List<PreWeather> weather) {
		this.weather = weather;
	}
	
	
}
