package com.ssm.controller;

import com.ssm.model.Resource;
import com.ssm.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/resource")
public class ResourceAction {

    @Autowired
    private ResourceService resourceService;

    @RequestMapping("/findOneMenu.do")
    public @ResponseBody List<Resource> findOneMenu(){
        return resourceService.findOneMenu();
    }
}
