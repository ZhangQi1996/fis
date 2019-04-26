package com.fis.mapper;

import com.fis.domain.PointInfo;

public interface PointInfoMapper {
    int deleteByPrimaryKey(String point_id);

    int insert(PointInfo record);

    int insertSelective(PointInfo record);

    PointInfo selectByPrimaryKey(String point_id);

    int updateByPrimaryKeySelective(PointInfo record);

    int updateByPrimaryKey(PointInfo record);
}