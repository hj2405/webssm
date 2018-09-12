package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexAction {

    @RequestMapping("/index.do")
    public String index(){
        return "frame";
    }

    @RequestMapping("/home.do")
    public String home(){
        return "home";
    }
}
