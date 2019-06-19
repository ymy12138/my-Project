package com.ymy.controller;

import com.ymy.pojo.Schedule;
import com.ymy.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class TypeInfoController {
    @Autowired
    private ScheduleService scheduleService;

//    @RequestMapping("all.do")
//    public String allInfo(String id, Model model){
//        int type=Integer.parseInt(id);
//        List<Schedule> list= scheduleService.selectByType(type);
//        System.out.println(list.size());
//        model.addAttribute("theTypeList",list);
//        return "theType";
//    }
    @RequestMapping("search.do")
    public String sercher(String searchCondition, Model model){
        System.out.println(searchCondition+"controller");
        List<Schedule> list=scheduleService.search(searchCondition);
        model.addAttribute("theTypeList",list);
        return "theType";
    }
    @RequestMapping("deleteSchedule.do")
    public String delete(String id,String type){
        int a=scheduleService.deleteSchedule(Integer.parseInt(id));
//        System.out.println("forward:/paging.do?type="+type);
//        String aa="forward:/paging.do?type="+type;
//        return aa;
        return "forward:/init.do";
    }

}
