package com.ymy.service;

import com.ymy.mapper.LoginMapper;
import com.ymy.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
    @Autowired
    private LoginMapper loginMapper;
    public User login(String username,String password){
        System.out.println("service"+username+password);
        return loginMapper.login(username,password);
    }
    public int update(String newPw,User user){
        return loginMapper.update(newPw,user.getId());
    }
}
