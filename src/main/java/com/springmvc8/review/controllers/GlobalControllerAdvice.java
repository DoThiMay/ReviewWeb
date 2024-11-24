package com.springmvc8.review.controllers;

import java.security.Principal;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class GlobalControllerAdvice {
    @ModelAttribute
    public void myMethod(Model model, Principal principal) {
        if (principal != null) {
            model.addAttribute("myDbValues", principal.getName());
        }
    }
}
