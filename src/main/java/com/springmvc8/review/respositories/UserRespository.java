package com.springmvc8.review.respositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.springmvc8.review.models.User;
import com.springmvc8.review.models.UserDto;

public interface UserRespository extends JpaRepository <User, Long>{
    @Query(value="SELECT * FROM user u WHERE u.username = :username", nativeQuery = true)
    public User getUserByUsername(@Param("username") String username);
    @Query(value = "SELECT userId, username FROM User u WHERE u.userId IN ?1", nativeQuery = true)
    public UserDto findByUserID(List<Long> userId);
    Optional<UserDto> findByUsername(String username);

}
