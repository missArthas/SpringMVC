package com.missArthas.dao;

import com.missArthas.entity.User;
import java.util.List;

/**
 * Created by shhuang on 2016/12/13.
 */
public interface UserDao {
    public int save(User u);
    public List<User> findAll();
}
