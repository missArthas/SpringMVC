package com.missArthas.service.impl;

import com.missArthas.dao.UserDao;
import com.missArthas.entity.User;
import com.missArthas.entity.UserEntity;
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
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public void saveUsers(List<UserEntity> us) {
        for (UserEntity u : us) {
            userDao.save(u);
        }
    }

    public void saveUser(UserEntity user) {
        userDao.save(user);
    }

    public List<UserEntity> getAllUsernames() {
        return userDao.findAll();
    }
}
