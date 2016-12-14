package com.missArthas.dao;

import com.missArthas.entity.SoaparamEntity;

import java.util.List;

/**
 * Created by shhuang on 2016/12/14.
 */
public interface SoaparamDao {
    public int save(SoaparamEntity s);
    public List<SoaparamEntity> findAll();
}
