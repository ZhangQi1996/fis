package com.fis.pojo;

public class WeatherResult {
	private Result result;
	
	private Integer errorCode; //错误代码
	
	private String reason;	//执行情况   为   Succes     或    参数不正确

	public Result getResult() {
		return result;
	}

	public void setResult(Result result) {
		this.result = result;
	}

	public Integer getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(Integer errorCode) {
		this.errorCode = errorCode;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}
	
	
}
