package com.springmvc8.review.respositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springmvc8.review.models.Review;

public interface ReviewRespository extends JpaRepository <Review, Long>{

}
