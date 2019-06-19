package com.ymy.controller;

import com.ymy.pojo.Schedule;
import com.ymy.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class InitController {
    @Autowired
    private ScheduleService scheduleService;
    @RequestMapping("init.do")
    public String init(HttpSession session){
        Map<String,List<Schedule>> map=scheduleService.selectAllSchedule();
//        model.addAttribute("a1",map.get("a1"));
//        model.addAttribute("a2",map.get("a2"));
//        model.addAttribute("a3",map.get("a3"));
        session.setAttribute("map",map);
        return "init";
    }
}
