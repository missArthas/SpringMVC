package com.missArthas.dao.impl;

import com.missArthas.dao.UserDao;
import com.missArthas.entity.User;
import com.missArthas.entity.UserEntity;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by shhuang on 2016/12/13.
 */
@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    public int save(UserEntity u) {
        int result = (Integer) sessionFactory.getCurrentSession().save(u);
        return result;
    }

    public List<UserEntity> findAll() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserEntity.class);
        return criteria.list();
    }
}
