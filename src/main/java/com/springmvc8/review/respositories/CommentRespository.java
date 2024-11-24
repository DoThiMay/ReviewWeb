package com.springmvc8.review.respositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springmvc8.review.models.Comment;

public interface CommentRespository extends JpaRepository<Comment, Long>{
    @Query(value ="SELECT * FROM comment d WHERE d.id =?1", nativeQuery = true)
    List<Comment> findByReviewId(Long id);
}
