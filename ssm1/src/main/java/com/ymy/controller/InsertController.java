package com.ymy.controller;

import com.ymy.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertController {
    @Autowired
    private ScheduleService scheduleService;

    @RequestMapping("insert.do")
    public String insert(Model model,String type, String attendees, String issue, String content) {
        int a = scheduleService.insertSchedule(type, attendees, issue, content);
        if (a == 1) {
            return "forward:/init.do";
        }else{
               model.addAttribute("failure","insertFailure");
               return "init";
        }

    }
}

