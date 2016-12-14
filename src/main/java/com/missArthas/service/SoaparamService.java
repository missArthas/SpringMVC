package com.missArthas.service;

import com.missArthas.entity.SoaparamEntity;

import java.util.List;

/**
 * Created by shhuang on 2016/12/14.
 */
public interface SoaparamService {
    public void saveSoaparam(List<SoaparamEntity> soaparamEntities);
    public List<SoaparamEntity> getAllSoaparams();
}
