package com.redis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.data.redis.core.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.nio.charset.StandardCharsets;
import java.util.*;

@Controller
public class Maincontroller {
    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    @GetMapping("/main")
    public ModelAndView getMainPage(ModelAndView mav){
        Set<String> keys = redisTemplate.keys("*");

        Map<String, String> keyValuMap = new HashMap<>();

        for (String key : keys){
            String value = redisTemplate.opsForValue().get(key);
            keyValuMap.put(key, value);
        }

        mav.addObject("keyvalue", keyValuMap); // model에 값만 저장
        mav.setViewName("/main");

        return mav;
    }

}
