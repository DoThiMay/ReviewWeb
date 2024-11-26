package com.springmvc8.review.controllers;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springmvc8.review.helpers.UploadFileHelper;
import com.springmvc8.review.models.Comment;
import com.springmvc8.review.models.CommentDTO;
import com.springmvc8.review.models.JSONFileUpload;
import com.springmvc8.review.models.Review;
import com.springmvc8.review.models.UserDto;
import com.springmvc8.review.respositories.CommentRespository;
import com.springmvc8.review.respositories.ReviewRespository;
import com.springmvc8.review.respositories.UserRespository;

@Controller
public class ReviewController implements ServletContextAware {
    private ServletContext servletContext;
    @Autowired
    ReviewRespository rewRepo;
    @Autowired
    CommentRespository comRepo;
    @Autowired
    UserRespository userRepo;
    private static final String UPLOAD_DIRECTORY = "E:/Review/uploads/";

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getAllReviews(ModelMap modelMap) {
        List<Review> listRew = rewRepo.findAll();
        modelMap.addAttribute("reviews", listRew);
        return "reviewtables";
    }
    
    @RequestMapping(value = "/theloai/{theloai}", method = RequestMethod.GET)
    public String getByTheloai(@PathVariable("theloai") String theloai, ModelMap modelMap) {
        List<Review> listRew = rewRepo.findByTheloai(theloai);
        modelMap.addAttribute("reviews", listRew);
        return "theloai";
    }
    
    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public String getReviewById(@PathVariable("id") long id, ModelMap modelMap, Principal principal) {
        Optional<Review> optionalReview = rewRepo.findById(id); // Tìm review theo ID
        modelMap.addAttribute("review", optionalReview.get());
        modelMap.addAttribute("reviewId", id); // Truyền id tài liệu cho JSP để sử dụng trong iframe
        modelMap.addAttribute("username", principal.getName());
        return "reviewdetails"; // Tên trang JSP để hiển thị nội dung revie
    }
    
  @RequestMapping(value = "/viewdetails/{id}", method = RequestMethod.GET)
  @ResponseBody
  public List<Comment> showDocumentDetails1(@PathVariable("id") Long id, ModelMap modelMap) {
     
      List<Comment> commentList = comRepo.findByReviewId(id);
      return commentList;
  }
  
   
    @RequestMapping(value = "/comment", method = RequestMethod.POST)
    public ResponseEntity<String> Comment(@RequestBody Comment comment){
        comment.setCreated_at(new Date());
        comRepo.save(comment);
        return ResponseEntity.ok("Data received successfully"); 
    }
    
//Phải học
    @RequestMapping(value = "/filebrowse", method = RequestMethod.GET)
    public String fileBrowse(ModelMap modelMap) {
        File folder = new File(servletContext.getRealPath("/WEB-INF/uploads/"));
        modelMap.put("files", folder.listFiles());
        return "filebrowse";
    }
  //Phải học
    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;

    }
  //Phải học
    @RequestMapping(value = "/upload/image", method = RequestMethod.POST, produces = {
            MimeTypeUtils.APPLICATION_JSON_VALUE })
    @ResponseBody
    public ResponseEntity<JSONFileUpload> UploadCKEditor(@RequestParam("upload") MultipartFile upload) {
        try {
            String fileName = UploadFileHelper.upload(servletContext, upload);
            return new ResponseEntity<JSONFileUpload>(new JSONFileUpload("/uploads/" + fileName), HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<JSONFileUpload>(HttpStatus.BAD_REQUEST);
        }
    }

  //Phải học
    // Method to show the review form
    @RequestMapping(value = "/dangreview", method = RequestMethod.GET)
    public String showForm(ModelMap modelMap) {
        modelMap.addAttribute("review", new Review());
        return "reviewform";
    }
  //Phải học
  @RequestMapping(value = "/dangreview", method = RequestMethod.POST)
    public String saveReview(@ModelAttribute Review review, @RequestParam("file") MultipartFile file,
            RedirectAttributes redirectAttributes) {
        File uploadDir = new File(UPLOAD_DIRECTORY);
        if (!uploadDir.exists() && !uploadDir.mkdirs()) {
            redirectAttributes.addFlashAttribute("msg", "Failed to create upload directory.");
            return "redirect:/dangreview"; // Updated to correct redirect path
        }

        if (!file.isEmpty()) {
            String fileName = file.getOriginalFilename();
            File saveFile = new File(uploadDir, fileName);
            try {
                file.transferTo(saveFile);
                review.setAnh(fileName); // Save file name to the review object
                System.out.println("File uploaded successfully to: " + saveFile.getAbsolutePath());
            } catch (IOException e) {
                e.printStackTrace();
                redirectAttributes.addFlashAttribute("msg", "File upload failed due to an error.");
                return "redirect:/dangreview"; // Correct redirect path
            }
        }

        // Save review to the database
        rewRepo.save(review);
        redirectAttributes.addFlashAttribute("msg", "Review saved successfully!");
        return "redirect:/quanlybaiviet";
    }
}
