package com.missArthas.dao.impl;

import com.missArthas.dao.UserDao;
import com.missArthas.entity.User;
import com.missArthas.entity.UserEntity;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by shhuang on 2016/12/13.
 */
@Repository
@Transactional
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    public int insert(UserEntity u) {
        int result = (Integer) sessionFactory.getCurrentSession().save(u);
        return result;
    }

    public int insert(List<UserEntity> users) {
        int sum=0;
        for(int i=0;i<users.size();i++) {
            int result = (Integer) sessionFactory.getCurrentSession().save(users.get(i));
            sum+=result;
        }
        return sum;
    }

    public int delete(UserEntity user) {
        sessionFactory.getCurrentSession().delete(user);
        return 1;
    }

    public int update(UserEntity user) {
        sessionFactory.getCurrentSession().saveOrUpdate(user);
        return 1;
    }

    public UserEntity queryByPK(UserEntity user) {
        UserEntity result=(UserEntity)sessionFactory.getCurrentSession().get(UserEntity.class,user.getId());
        return result;
    }

    public List<UserEntity> queryLike(UserEntity user) {
        return null;
    }


    public List<UserEntity> findAll() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(UserEntity.class);
        return criteria.list();
    }
}
