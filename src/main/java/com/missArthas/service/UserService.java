package com.missArthas.service;

import com.missArthas.entity.User;

import java.util.List;

/**
 * Created by shhuang on 2016/12/13.
 */
public interface UserService {
    public void saveUsers(List<User> us);
    public List<User> getAllUsernames();
}
