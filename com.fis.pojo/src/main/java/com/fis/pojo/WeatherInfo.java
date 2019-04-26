package com.fis.pojo;

import java.util.List;

public class WeatherInfo {
	private List<String> night;
	
	private List<String> day;
	
	private List<String> dawn;

	public List<String> getNight() {
		return night;
	}

	public void setNight(List<String> night) {
		this.night = night;
	}

	public List<String> getDay() {
		return day;
	}

	public void setDay(List<String> day) {
		this.day = day;
	}

	public List<String> getDawn() {
		return dawn;
	}

	public void setDawn(List<String> dawn) {
		this.dawn = dawn;
	}
	
	
}
