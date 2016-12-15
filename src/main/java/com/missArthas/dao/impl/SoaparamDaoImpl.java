package com.missArthas.dao.impl;

import com.missArthas.dao.SoaparamDao;
import com.missArthas.entity.SoaparamEntity;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by shhuang on 2016/12/14.
 */
@Repository
@Transactional
public class SoaparamDaoImpl implements SoaparamDao {

    @Autowired
    private SessionFactory sessionFactory;

    public int save(SoaparamEntity s) {
        int result = (Integer) sessionFactory.getCurrentSession().save(s);
        return result;
    }

    public List<SoaparamEntity> findAll() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(SoaparamEntity.class);
        return criteria.list();
    }
}
