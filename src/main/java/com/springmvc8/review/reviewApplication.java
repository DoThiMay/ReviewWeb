package com.springmvc8.review;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;


@SpringBootApplication
public class reviewApplication {
    public static void main(String[] args) {
        SpringApplication.run(reviewApplication.class, args);
    }
}
