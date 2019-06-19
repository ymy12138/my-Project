package com.ymy.mapper;

import com.ymy.pojo.Schedule;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ScheduleMapper {
//所有的schedule
    List<Schedule> selectAllSchedule();
//通过按照type查询的schedule
    List<Schedule> selectByType(int type);
//插入schedule
    int insertSchedule(Schedule schedule);
//通过条件搜索schedule
    List<Schedule> search(String searchCondition);
//获得schedule总数
    int selectTotal(int type);
//获取当前页的数据
    List<Schedule> selectCurrentPage(@Param("type") int type,@Param("start") int start,@Param("pageSize") int pageSize);
//    删除schedule
    int deleteSchedule(int id);
}
