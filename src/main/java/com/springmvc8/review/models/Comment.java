package com.springmvc8.review.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "comment")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long commentId;
    private String username;
    @Column(name = "id")
    private Long reviewId;
    private String content;
    private Date created_at;

    public Long getCommentId() {
        return commentId;
    }

    public void setCommentId(Long commentId) {
        this.commentId = commentId;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Long getReviewId() {
        return reviewId;
    }

    public void setReviewId(Long reviewId) {
        this.reviewId = reviewId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

   

    public Comment(Long commentId, String username, Long reviewId, String content, Date created_at) {
        super();
        this.commentId = commentId;
        this.username = username;
        this.reviewId = reviewId;
        this.content = content;
        this.created_at = created_at;
    }

    public Comment() {
        super();
        // TODO Auto-generated constructor stub
    }

}
