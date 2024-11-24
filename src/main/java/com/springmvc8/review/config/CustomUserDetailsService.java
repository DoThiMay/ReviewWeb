package com.springmvc8.review.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.springmvc8.review.models.User;
import com.springmvc8.review.respositories.UserRespository;


public class CustomUserDetailsService implements UserDetailsService{
    @Autowired
    UserRespository userRepo;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.getUserByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("Could not find user");
        }
        return new CustomUserDetails(user);
    }

}
