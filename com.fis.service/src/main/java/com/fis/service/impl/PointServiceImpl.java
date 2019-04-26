package com.fis.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fis.domain.PointInfo;
import com.fis.mapper.PointInfoMapper;
import com.fis.service.PointService;

@Service
public class PointServiceImpl implements PointService {

	@Autowired
	PointInfoMapper pointInfoMapper;
	
	public PointInfo findPointInfoByPointId(String pointId) {
		return pointInfoMapper.selectByPrimaryKey(pointId);
	}

	public Map<String, String> getModelResultByPointId(String pointId) {
		/**
		 * 这里采用机器学习算法实现模型的预测和干旱等级判定
		 */
		Map<String, String> map = new HashMap<String, String>();
		//以下代码以后由机器学习代码代替
		switch(pointId){
			case "001":{ //玉米
				map.put("drought_level", "2级");
				map.put("irrig_proposal", "否");
				break;
			}
			case "002":{	//水稻
				map.put("drought_level", "1级");
				map.put("irrig_proposal", "否");
				break;
			}
			case "003":{	//小麦
				map.put("drought_level", "3级");
				map.put("irrig_proposal", "建议");
				break;
			}
			case "004":{	//大棚
				map.put("drought_level", "1级");
				map.put("irrig_proposal", "否");
				break;
			}
			case "005":{	
				map.put("drought_level", "1级");
				map.put("irrig_proposal", "否");
				break;
			}
			case "006":{	
				map.put("drought_level", "1级");
				map.put("irrig_proposal", "否");
				break;
			}
		}
		return map;
	}

	@Override
	public List<PointInfo> getPointInfoList() {
		List<PointInfo> list = new ArrayList<PointInfo>();
		for(int i = 1; i <= 4; i++) {
			list.add(pointInfoMapper.selectByPrimaryKey("00" + i));
		}
		return list;
	}
	
	
}
