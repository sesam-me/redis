package com.redis.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.RedisStandaloneConfiguration;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;

@Configuration
@EnableAspectJAutoProxy
public class redisConfig {
    private String redisHost = "localhost";
    private int redisPort = 6379;
    private String redisPassword = "";

    @Bean
    public RedisConnectionFactory redisConnectionFactory(){
        RedisStandaloneConfiguration configuration = new RedisStandaloneConfiguration();
        configuration.setHostName(redisHost);
        configuration.setPort(redisPort);
        configuration.setPassword(redisPassword);

        return new LettuceConnectionFactory(configuration);
    }


    @Bean
    public RedisTemplate<String, String> redisTemplate(){
        RedisTemplate<String, String> redisTemplate = new RedisTemplate<>();
        redisTemplate.setConnectionFactory(redisConnectionFactory());
        redisTemplate.setKeySerializer(new StringRedisSerializer()); // key값을 String으로 쓰겠다
        redisTemplate.setValueSerializer(new StringRedisSerializer());
        return redisTemplate;
    }
}
