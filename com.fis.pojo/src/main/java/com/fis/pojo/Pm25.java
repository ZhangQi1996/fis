package com.fis.pojo;

public class Pm25 {
	private String key;
	
	private String show_desc;
	
	private Pm_25 pm25;
	
	private String dateTime;
	
	private String cityName;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getShow_desc() {
		return show_desc;
	}

	public void setShow_desc(String show_desc) {
		this.show_desc = show_desc;
	}

	public Pm_25 getPm25() {
		return pm25;
	}

	public void setPm25(Pm_25 pm25) {
		this.pm25 = pm25;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	
	
}

class Pm_25{
	
	private String curPm;
	
	private String pm25;
	
	private String pm10;
	
	private String level;
	
	private String quality;
	
	private String des;

	public String getCurPm() {
		return curPm;
	}

	public void setCurPm(String curPm) {
		this.curPm = curPm;
	}

	public String getPm25() {
		return pm25;
	}

	public void setPm25(String pm25) {
		this.pm25 = pm25;
	}

	public String getPm10() {
		return pm10;
	}

	public void setPm10(String pm10) {
		this.pm10 = pm10;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getQuality() {
		return quality;
	}

	public void setQuality(String quality) {
		this.quality = quality;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}
	
	
}
