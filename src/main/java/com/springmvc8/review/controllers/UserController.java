package com.springmvc8.review.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc8.review.models.Role;
import com.springmvc8.review.models.User;
import com.springmvc8.review.models.User_Role;
import com.springmvc8.review.respositories.RoleRespository;
import com.springmvc8.review.respositories.UserRespository;
import com.springmvc8.review.respositories.User_RoleRespository;

@Controller
public class UserController {
    @Autowired
    UserRespository userRepo;
    @Autowired
    RoleRespository roleRepo;
    @Autowired
    User_RoleRespository user_roleRe;
    @RequestMapping(value = "/showUser", method = RequestMethod.GET)
    public String showUser(ModelMap modelMap) {
        List<User> listUser = userRepo.findAll();
        modelMap.addAttribute("user", listUser);
        return "User";
    }
    
    @RequestMapping(value = "/dangky", method = RequestMethod.GET)
    public String insertUser(ModelMap modelMap) {
        modelMap.addAttribute("user", new User());
        return "dangky";
    }

    @RequestMapping(value = "/dangky", method = RequestMethod.POST)
    public String insertUser(ModelMap modelMap, @Validated @ModelAttribute("user") User user,
            BindingResult BindingResult) {
        if (BindingResult.hasErrors()) {
            return "dangky";
        }
        try {
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            String encodedPassword = passwordEncoder.encode(user.getPassword());
            user.setPassword(encodedPassword);
            userRepo.save(user);
            Role userRole = roleRepo.findByName("USER");
            User_Role user_role = new User_Role (user.getUserId(), userRole.getRoleId());
            user_roleRe.save(user_role);
            userRepo.save(user);
            return "redirect:/showUser";
        } catch (Exception e) {
            modelMap.addAttribute("error", e.toString());
            return "dangky";
        }
    }
    
}
