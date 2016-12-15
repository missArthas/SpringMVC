package com.missArthas.controller;

import com.missArthas.entity.UserEntity;
import com.missArthas.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by shhuang on 2016/12/14.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET,params = "new")
    public String index(Model model){
        model.addAttribute(new UserEntity());
        return "user/index";
    }

    @RequestMapping(value="/reg",method = RequestMethod.POST)
    public String registe(HttpServletRequest request){
        String username=request.getParameter("username");
        String password=request.getParameter("password");

        UserEntity user=new UserEntity();
        user.setUsername(username);
        user.setPassword(password);
        userService.saveUser(user);
        System.out.println("############## username:");
        System.out.println(user.getUsername());
        return "redirect:"+user.getUsername();
    }

    @RequestMapping(value="/{username}",method = RequestMethod.GET)
    public String userdetail(@PathVariable String username, Model model){
        model.addAttribute("username",username);
        return "user/views";
    }


}
