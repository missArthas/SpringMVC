package com.missArthas.controller;

import com.missArthas.entity.User;
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

    @RequestMapping(value = "/addUser",method = RequestMethod.GET)
    public String index(){
        List<User> us = new ArrayList<User>();
        User u = new User();
        u.setUsername("MarK");
        us.add(u);
        u = new User();
        u.setUsername("Fawofolo");
        us.add(u);
        userService.saveUsers(us);
        return "hello/index";
    }

    @ResponseBody
    @RequestMapping(value = "/getUser.json",method = RequestMethod.GET,headers="Accept=application/json")
    public List<User> getAllUser() {
        return userService.getAllUsernames();
    }

}
