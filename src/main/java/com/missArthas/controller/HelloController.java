package com.missArthas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by shhuang on 2016/11/16.
 */
@Controller
@RequestMapping("/Hello")
public class HelloController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView index() {
        return new ModelAndView("hello/index", "users", "");
    }

    @RequestMapping(value = "/search.json", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
    @ResponseBody
    public String search(@RequestParam String pk) {
        String result="";
        return result;
    }

}
