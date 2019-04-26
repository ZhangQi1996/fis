package com.fis.pojo;

public class PreWeather {
	private String date; //日起
	private WeatherInfo info;	//预测的天气信息
	private String week;	//星期几
	private String nongli;	//农历时间
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public WeatherInfo getInfo() {
		return info;
	}
	public void setInfo(WeatherInfo info) {
		this.info = info;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getNongli() {
		return nongli;
	}
	public void setNongli(String nongli) {
		this.nongli = nongli;
	}
	
	
}
