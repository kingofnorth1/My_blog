//package com.blog.controller;
//
//import com.blog.Service.impl.UserServiceImpl;
//import com.blog.model.domain.user;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//@RestController
//public class login {
//    @Autowired
//    private UserServiceImpl userService;
//
//    @GetMapping("/test")
//    public user login(){
//        user user = new user();
//        user.setUsername("dqk");
//        user.setPassword("123");
//        return userService.findUser(user);
//    }
//}
