package com.fis.utils;

import java.util.concurrent.LinkedBlockingQueue;

public class Predict {
	
	public static LinkedBlockingQueue<Predict> PRE_QUE = new LinkedBlockingQueue<Predict>();
	
	private int type;
	
	private String time;

	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public int getType() {
		return type;
	}


	public void setType(int type) {
		this.type = type;
	}
	
	public static void enqueue(Predict p) {
		try {
			PRE_QUE.put(p);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Predict dequeue() {
		try {
			
			return PRE_QUE.remove();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public static Predict getQueueHead() {
		return PRE_QUE.peek();	
	}
	
	public static int getQueueSize() {
		return PRE_QUE.size();
	}
	
	

}
