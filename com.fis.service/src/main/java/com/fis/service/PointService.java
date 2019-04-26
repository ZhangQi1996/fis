package com.fis.service;

import java.util.List;
import java.util.Map;
import com.fis.domain.PointInfo;

public interface PointService {
	
	public PointInfo findPointInfoByPointId(String pointId);
	
	Map<String, String> getModelResultByPointId(String pointId);
	
	List<PointInfo> getPointInfoList();
}
