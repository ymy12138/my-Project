package com.ymy.controller;

import com.ymy.pojo.Page;
import com.ymy.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.xml.ws.Action;

@Controller
public class PagingController {
    @Autowired
    private ScheduleService scheduleService;
    @RequestMapping("paging.do")
    public String paging(String currentPage, Model model,String type){
        int currentP;
        if(currentPage==null){
            currentP=0;
        }else{
            currentP=Integer.parseInt(currentPage);
        }
        System.out.println(1);
        Page page=scheduleService.getPage(Integer.parseInt(type),currentP);
        System.out.println(2);
        model.addAttribute("page",page);
        return "content";
    }
}
