package com.springmvc8.review.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springmvc8.review.models.Review;
import com.springmvc8.review.models.User;
import com.springmvc8.review.respositories.CommentRespository;
import com.springmvc8.review.respositories.ReviewRespository;
import com.springmvc8.review.respositories.UserRespository;
import com.springmvc8.review.respositories.User_RoleRespository;
@Controller
public class AdminController {
    @Autowired
    ReviewRespository rewRepo;
    @Autowired
    UserRespository userRepo;
    @Autowired
    CommentRespository comRepo;
    @Autowired
    User_RoleRespository user_roleRe;
    @RequestMapping(value = "/helloAd", method = RequestMethod.GET)
    public String helloAd() {
        return "trangAdmin";
    }
    @RequestMapping(value = "/quanlybaiviet", method = RequestMethod.GET)
    public String getAllReviews(ModelMap modelMap) {
        List<Review> listRew = rewRepo.findAll();
        modelMap.addAttribute("reviews", listRew);
        return "quanlybaiviet";
    }
    
    @RequestMapping(value = "/quanlynguoidung", method = RequestMethod.GET)
    public String getAllUser(ModelMap modelMap) {
        List<User> listUser = userRepo.findAll();
        modelMap.addAttribute("users", listUser);
        return "quanlynguoidung";
    }
    
    @Transactional
    @RequestMapping(value = "/xoaNguoidung/{userId}", method = RequestMethod.POST)
    public String deleteUser(ModelMap modelMap, @PathVariable Long userId) {
        try {
            // Xóa dữ liệu liên quan trong bảng User_role trước
            user_roleRe.deleteByUserId(userId);
            
            // Sau đó xóa user trong bảng User
            userRepo.deleteById(userId);
            return "redirect:/quanlynguoidung"; // Trở lại trang chủ sau khi xóa thành công
        } catch (Exception e) {
            modelMap.addAttribute("error", "Xóa user thất bại: " + e.getMessage());
            return "quanlynguoidung"; // Trả về trang hiện danh sách user nếu lỗi
        }
    }
    @RequestMapping(value = "/chinhsuabaiviet/{id}", method = RequestMethod.GET)
    public String chinhsuabaiviet(@PathVariable("id") Long id, Model model) {
        // Lấy tài liệu từ cơ sở dữ liệu
        Optional<Review> reviewOptional = rewRepo.findById(id);
        if (!reviewOptional.isPresent()) {
            return "redirect:/quanlybaiviet";  // Nếu không tìm thấy tài liệu, quay lại trang quản lý
        }
        Review review = reviewOptional.get();
        model.addAttribute("review", review);
        model.addAttribute("review1", new Review());
        return "chinhsuabaiviet";  // Chuyển tới JSP/HTML để sửa tài liệu
    }
    @RequestMapping(value = "/chinhsuabaiviet/{id}", method = RequestMethod.POST)
    public String chinhsuabaiviet(@ModelAttribute Review review, RedirectAttributes redirectAttributes) {
        // Cập nhật thông tin tài liệu
        Review existingReview = rewRepo.findById(review.getId()).orElseThrow(() -> new RuntimeException("Review not found"));
        
        existingReview.setTieude(review.getTieude());
        existingReview.setTacgia(review.getTacgia());
        existingReview.setNoidung(review.getNoidung());
        existingReview.setPhanloai(review.getPhanloai());
        existingReview.setTheloai(review.getTheloai());

        // Lưu tài liệu đã sửa
        rewRepo.save(existingReview);

        redirectAttributes.addFlashAttribute("message", "Review updated successfully!");
        return "redirect:/quanlybaiviet";  // Chuyển hướng về trang quản lý tài liệu
    }
    @Transactional
    @RequestMapping(value = "/xoabaiviet/{id}", method = RequestMethod.POST)
    public String xoabaiviet(@PathVariable("id") Long id, RedirectAttributes ra) {
        Optional<Review> ReviewOptional = rewRepo.findById(id);
        if (ReviewOptional.isPresent()) {
            Review review = ReviewOptional.get();

            // Xóa tất cả các bình luận liên quan đến tài liệu
            comRepo.deleteByReviewId(id);

            // Xóa tài liệu khỏi hệ thống
            rewRepo.delete(review);

            // Thông báo cho người dùng rằng tài liệu đã được xóa thành công
            ra.addFlashAttribute("message", "Review and associated comments have been deleted successfully!");
        } else {
            // Nếu tài liệu không tồn tại, thông báo lỗi
            ra.addFlashAttribute("error", "Review not found!");
        }

        // Sau khi xóa, điều hướng lại đến trang quản lý tài liệu
        return "redirect:/quanlybaiviet";
    }
    
}
