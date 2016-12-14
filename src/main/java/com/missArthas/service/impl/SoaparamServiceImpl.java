package com.missArthas.service.impl;

import com.missArthas.dao.SoaparamDao;
import com.missArthas.dao.UserDao;
import com.missArthas.entity.SoaparamEntity;
import com.missArthas.entity.User;
import com.missArthas.service.SoaparamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by shhuang on 2016/12/14.
 */

@Service("soaparamService")
@Transactional
public class SoaparamServiceImpl implements SoaparamService{
    @Autowired
    private SoaparamDao soaparamDao;

    public void saveSoaparam(List<SoaparamEntity> soaparamEntities) {
        for (SoaparamEntity soaparamEntity : soaparamEntities) {
            soaparamDao.save(soaparamEntity);
        }
    }

    public List<SoaparamEntity> getAllSoaparams() {
        return soaparamDao.findAll();
    }
}
