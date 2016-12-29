package com.missArthas.controller;

import com.missArthas.service.AuthorityService;
import com.missArthas.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by shhuang on 2016/12/28.
 */
@Controller
@RequestMapping("/")
public class MainController {
    @Autowired
    private UserService userService;

    @Autowired
    private AuthorityService authorityService;

    @RequestMapping()
    public String index(){
        return "hello/index";
    }

    @RequestMapping(value = "/loginPage",method = RequestMethod.GET)
    public String loginPage(@RequestParam(value = "error", required = false) String error) {
        if (error != null) {
            return "security/login";
        }
        return "security/login";
    }

    @RequestMapping(value = "/registePage",method = RequestMethod.GET)
    public String registePage(){
        return "security/reg";
    }

    @RequestMapping(value = "/registe",method = RequestMethod.GET)
    public String registe(){
        return "security/login";
    }

    @RequestMapping(value = "/project",method = RequestMethod.GET)
    public String manageProject(){
        return "project/index";
    }

    @RequestMapping(value = "/translate",method = RequestMethod.GET)
    public String translate(){
        return "translate/index";
    }

    @RequestMapping(value = "/revision",method = RequestMethod.GET)
    public String revision(){
        return "revision/index";
    }


}
