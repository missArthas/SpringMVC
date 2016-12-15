package com.missArthas.service;

import com.missArthas.entity.User;
import com.missArthas.entity.UserEntity;

import java.util.List;

/**
 * Created by shhuang on 2016/12/13.
 */
public interface UserService {
    public void saveUsers(List<UserEntity> us);
    public void saveUser(UserEntity user);
    public List<UserEntity> getAllUsernames();
}
