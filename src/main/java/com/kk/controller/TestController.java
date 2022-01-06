package com.kk.controller;

/*
@date 2022/1/5 - 18:30
*/

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @RequestMapping("/test")
    public String test() {
        return "success";
    }
}
