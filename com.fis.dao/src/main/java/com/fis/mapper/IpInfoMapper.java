package com.fis.mapper;

import com.fis.domain.IpInfo;

public interface IpInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(IpInfo record);

    int insertSelective(IpInfo record);

    IpInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(IpInfo record);

    int updateByPrimaryKey(IpInfo record);
    
    IpInfo selectByIp(String ip);
}