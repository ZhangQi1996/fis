package com.fis.service;

import com.fis.pojo.User;

public interface LoginService {
	
	public User findUserByIdAndPw(String id, String password);

}
