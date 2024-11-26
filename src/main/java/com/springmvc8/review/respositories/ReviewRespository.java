package com.springmvc8.review.respositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.springmvc8.review.models.Review;

public interface ReviewRespository extends JpaRepository <Review, Long>{
    @Query(value="SELECT * FROM review u WHERE u.theloai = ?1", nativeQuery = true)
    List<Review> findByTheloai(String theloai);
    
    @Query(value ="SELECT * FROM review d WHERE d.tieude LIKE %?1% OR d.tacgia LIKE %?1% OR d.theloai LIKE %?1%", nativeQuery = true)
    List<Review> findByNameContaining(String query);

    @Query(value="SELECT * FROM review LIMIT 3", nativeQuery = true)
    List<Review> findByLimit3();
}
