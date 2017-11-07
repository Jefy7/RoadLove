package com.rl.roadlovebackend.dao;

import com.rl.roadlovebackend.model.UserCredentials;

public interface UserDao {
	
	public	boolean insertUser(UserCredentials usercredentials);
	public UserCredentials singleUser(String email);

}
