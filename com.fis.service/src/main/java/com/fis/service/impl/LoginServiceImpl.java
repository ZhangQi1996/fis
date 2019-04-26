package com.fis.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fis.mapper.UserMapper;
import com.fis.pojo.User;
import com.fis.service.LoginService;
@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	UserMapper userMapper;
	
	public User findUserByIdAndPw(String id, String password) {
		User u = new User();
		u.setId(id);
		u.setPassword(password);
		return userMapper.selectByIdAndPw(u);
	}

}
