package com.springmvc8.review.respositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.springmvc8.review.models.User_Role;


public interface User_RoleRespository extends JpaRepository<User_Role, Long>{
    @Modifying
    @Query(value = "DELETE FROM user_role  WHERE userId = ?1", nativeQuery = true)
    void deleteByUserId(Long userId);
}
