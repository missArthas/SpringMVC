package com.missArthas.dao;

import com.missArthas.entity.User;
import com.missArthas.entity.UserEntity;

import java.util.List;

/**
 * Created by shhuang on 2016/12/13.
 */
public interface UserDao {
    public int save(UserEntity u);
    public List<UserEntity> findAll();
}
