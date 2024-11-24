package com.springmvc8.review.respositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springmvc8.review.models.Role;


public interface RoleRespository extends JpaRepository<Role, Long>{
    @Query(value ="SELECT * FROM Role WHERE rolename=?1", nativeQuery = true)
    Role findByName(String rolename);
}
