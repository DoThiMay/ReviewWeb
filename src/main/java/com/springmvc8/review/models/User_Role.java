package com.springmvc8.review.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_role")
public class User_Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long user_roleId;
    private Long userId;
    private Long roleId;

    public Long getUser_roleId() {
        return user_roleId;
    }

    public void setUser_roleId(Long user_roleId) {
        this.user_roleId = user_roleId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public User_Role() {
        super();
        // TODO Auto-generated constructor stub
    }

    public User_Role(Long userId, Long roleId) {
        super();
        this.userId = userId;
        this.roleId = roleId;
    }

}
