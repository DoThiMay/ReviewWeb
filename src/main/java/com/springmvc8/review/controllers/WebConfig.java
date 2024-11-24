package com.springmvc8.review.controllers;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer{
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // Ánh xạ thư mục uploads tới /images/ trong URL
        registry.addResourceHandler("/images/**")
                .addResourceLocations("file:E:/Review/uploads/");
    }
}
