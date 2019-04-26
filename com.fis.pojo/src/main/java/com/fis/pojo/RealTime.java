package com.fis.pojo;

public class RealTime {
	private Wind wind; //风
	private String time;	//时间
	private Weather weather;	//实时天气
	private Long dataUptime;	//上传时间
	private String date;	//日期
	private String	city_code;	//城市代码
	private String city_name;	//城市名称
	private	Integer week; //星期几
	private String moon; //农历
	public Wind getWind() {
		return wind;
	}
	public void setWind(Wind wind) {
		this.wind = wind;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Weather getWeather() {
		return weather;
	}
	public void setWeather(Weather weather) {
		this.weather = weather;
	}
	public Long getDataUptime() {
		return dataUptime;
	}
	public void setDataUptime(Long dataUptime) {
		this.dataUptime = dataUptime;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Integer getWeek() {
		return week;
	}
	public void setWeek(Integer week) {
		this.week = week;
	}
	public String getMoon() {
		return moon;
	}
	public void setMoon(String moon) {
		this.moon = moon;
	}
	public String getCity_code() {
		return city_code;
	}
	public void setCity_code(String city_code) {
		this.city_code = city_code;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	
}
