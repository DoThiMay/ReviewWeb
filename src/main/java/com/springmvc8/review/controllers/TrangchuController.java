package com.springmvc8.review.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc8.review.models.Review;
import com.springmvc8.review.respositories.ReviewRespository;


@Controller
public class TrangchuController {
    @Autowired
    ReviewRespository reviewRepo;
    @RequestMapping(value = "/trangchu", method = RequestMethod.GET)
    public String Trangchu(ModelMap modelMap) {
        List<Review> listRew = reviewRepo.findByLimit3();
        modelMap.addAttribute("reviews", listRew);
        return "trangchu";
    }
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String searchDocuments(@RequestParam(name = "query", required = false, defaultValue = "") String query,
            Model model) {
        List<Review> reviews;

        if (query != null && !query.isEmpty()) {
            // Tìm kiếm tài liệu theo tên nếu có query
            reviews = reviewRepo.findByNameContaining(query);
        } else {
            // Nếu không có query, trả về tất cả tài liệu
            reviews = reviewRepo.findAll();
        }
        model.addAttribute("reviews", reviews); // Truyền danh sách tài liệu tìm được vào model
        model.addAttribute("query", query); // Truyền từ khóa tìm kiếm vào model
        return "theloai";
    }
}
