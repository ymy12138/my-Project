package com.ymy.mapper;

import com.ymy.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface LoginMapper {
    User login(@Param("username") String username,@Param("password") String password);

    int update(@Param("password") String password,@Param("id") int id);

}
