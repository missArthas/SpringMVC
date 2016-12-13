package com.missArthas.service.impl;

import com.missArthas.dao.UserDao;
import com.missArthas.entity.User;
import com.missArthas.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shhuang on 2016/12/13.
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public void saveUsers(List<User> us) {
        for (User u : us) {
            userDao.save(u);
        }
    }

    public List<User> getAllUsernames() {
        return userDao.findAll();
    }
}
