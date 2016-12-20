package com.missArthas.test;

import com.missArthas.entity.UserEntity;
import com.missArthas.utils.HibernateSessionFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shhuang on 2016/12/20.
 */
public class Test {
    public static void main(String[] args){
        Session session = HibernateSessionFactory.getCurrentSession();
        List<UserEntity> us = new ArrayList<UserEntity>();
        UserEntity u = new UserEntity();
        u.setUsername("MarK");
        u.setPassword("123456");
        us.add(u);
        u = new UserEntity();
        u.setUsername("Fawofolo");
        u.setPassword("123456");
        us.add(u);
        session.save(u);
    }
}
