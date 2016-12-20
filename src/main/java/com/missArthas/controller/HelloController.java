package com.missArthas.controller;

import com.missArthas.entity.SoaparamEntity;
import com.missArthas.entity.User;
import com.missArthas.entity.UserEntity;
import com.missArthas.service.SoaparamService;
import com.missArthas.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shhuang on 2016/11/16.
 */
@Controller
@RequestMapping("/")
public class HelloController {
    @Autowired
    private UserService userService;

    @Autowired
    private SoaparamService soaparamService;

    @RequestMapping()
    public String index(){
        return "hello/index";
    }

    @RequestMapping(value = "/addUser",method = RequestMethod.GET)
    public String addUser(){
        List<UserEntity> us = new ArrayList<UserEntity>();
        UserEntity u = new UserEntity();
        u.setUsername("MarK");
        u.setPassword("123456");
        us.add(u);
        u = new UserEntity();
        u.setUsername("Fawofolo");
        u.setPassword("123456");
        us.add(u);
        userService.insert(us);
        return "hello/index";
    }

    @ResponseBody
    @RequestMapping(value = "/getUser.json",method = RequestMethod.GET,headers="Accept=application/json")
    public List<UserEntity> getAllUser() {
        return userService.findAll();
    }

    @ResponseBody
    @RequestMapping(value = "/getSoaparams.json",method = RequestMethod.GET,headers="Accept=application/json")
    public List<SoaparamEntity> getSoaparams() {
        return soaparamService.getAllSoaparams();
    }

}
