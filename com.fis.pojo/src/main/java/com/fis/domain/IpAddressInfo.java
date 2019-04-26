package com.fis.domain;

public class IpAddressInfo {
	
	private String w; //纬度
	
	private String j; //经度
	
	private String p; //省份
	
	private String c; //市
	
	private String d; //县/区

	public String getW() {
		return w;
	}

	public void setW(String w) {
		this.w = w;
	}

	public String getJ() {
		return j;
	}

	public void setJ(String j) {
		this.j = j;
	}

	public String getP() {
		return p;
	}

	public void setP(String p) {
		this.p = p;
	}

	public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public String getD() {
		return d;
	}

	public void setD(String d) {
		this.d = d;
	}
	
	@Override
	public String toString() {
		return "IpAddressInfo [w=" + w + ", j=" + j + ", p=" + p + ", c=" + c + ", d=" + d + "]";
	}
	
}
