package com.kk.controller;



import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @RequestMapping("/test")
    public String test(String name) {
        System.out.println("name..." + name);
        return "hello world, " + name;
    }
}
