package com.ymy.service;
import com.ymy.mapper.ScheduleMapper;
import com.ymy.pojo.Page;
import com.ymy.pojo.Schedule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.*;
@Service
public class ScheduleService {
    @Autowired
    private ScheduleMapper scheduleMapper;
    //获得所有的数据显示在init页面上
    public Map<String, List<Schedule>> selectAllSchedule() {
        //在service做逻辑处理，将list中的数据分成三份并封装到map集合中
        Map<String, List<Schedule>> map = new HashMap<>();
        List<Schedule> list = scheduleMapper.selectAllSchedule();
        Collections.reverse(list);
        List<Schedule> a1 = new ArrayList<>();
        List<Schedule> a2 = new ArrayList<>();
        List<Schedule> a3 = new ArrayList<>();
        for (Schedule schedule : list) {
        //为了只在前台显示五条数据，这样就可以实现每个集合中只有五条数据
            if (schedule.getType() == 1) {
                if (a1.size() < 5) {
                    a1.add(schedule);
                }
            }
            if (schedule.getType() == 2) {
                if (a2.size() < 5) {
                    a2.add(schedule);
                }
            }
            if (schedule.getType() == 3) {
                if (a3.size() < 5) {
                    a3.add(schedule);
                }
            }
        }
        //在查询的时候使用order by将数据库按照时间的顺序排列好，然后在这个地方见原本按照
        //时间顺序排列的反转成倒序，也就是说时间越近越在上面
        map.put("a1", a1);
        map.put("a2", a2);
        map.put("a3", a3);
        return map;
    }
    //获取对应类型的数据显示在页面上
    public List<Schedule> selectByType(int type) {
        return scheduleMapper.selectByType(type);
    }
    //    插入语句
    public int insertSchedule(String type, String attendees, String issue, String content) {
        Schedule schedule = new Schedule();
        schedule.setAttendees(attendees);
        schedule.setIssue(issue);
        schedule.setContent(content);
        schedule.setType(Integer.parseInt(type));
        //数据库中的date是来自java.sql.Date，但是获取目前时间只能是java.util.Date的对象
        //所以这个地方先创建一个util的Date然后前置类型转换成sql.Date
        //并不能将Util这个父类转换成他的子类，然后就是说可以像下面这样创建对应的时间对象
        //注意java.sql.Date和java.Util.Date的区别
        schedule.setScheduletime(new java.sql.Date(System.currentTimeMillis()));
        return scheduleMapper.insertSchedule(schedule);
    }
    public List<Schedule> search(String searchCondition){
        System.out.println(searchCondition+"service");
        return scheduleMapper.search('%'+searchCondition+'%');
    }
//分页
    public Page getPage(int type,int currentPage){
        int totalDate=scheduleMapper.selectTotal(type);
        List<Schedule> list=scheduleMapper.selectCurrentPage(type,currentPage*3,3);
        System.out.println("service2");
        Page page=new Page();
        page.setCurrentList(list);
        page.setType(type);
        page.setCurrentPage(currentPage);
        page.setPageSize(3);
        page.setTotalDate(totalDate);
        int totalPage=totalDate%3==0?totalDate/3:(totalDate/3)+1;
        page.setTotalPage(totalPage);
        return page;
    }

//    删除
    public int deleteSchedule(int id){
        return scheduleMapper.deleteSchedule(id);
    }
}
