package com.redis.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Service
public class MainService {
    @Autowired
    private RedisTemplate<String, String> redisTemplate;
    public MainService(RedisTemplate<String, String> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    public void setRedisTemplate(String key, String value){
        redisTemplate.opsForValue().set(key, value);
    }
    public Map<String, String> getRedisAll(){
        Map<String, String> result = new HashMap<>();

        Set<String> keys = redisTemplate.keys("*"); // return값이 set으로 넘어온다??

        for (String key: keys) {
            String value = redisTemplate.opsForValue().get(key);
            result.put(key, value);
        }
        return result;
    }
}
