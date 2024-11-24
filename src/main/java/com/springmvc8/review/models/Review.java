package com.springmvc8.review.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "review")
public class Review {
    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String tieude;
    private String tacgia;
    private String phanloai;
    private String theloai;
    private String noidung;
    private String anh;
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
    public String getTieude() {
        return tieude;
    }
    public void setTieude(String tieude) {
        this.tieude = tieude;
    }
    public String getTacgia() {
        return tacgia;
    }
    public void setTacgia(String tacgia) {
        this.tacgia = tacgia;
    }
    public String getPhanloai() {
        return phanloai;
    }
    public void setPhanloai(String phanloai) {
        this.phanloai = phanloai;
    }
    public String getTheloai() {
        return theloai;
    }
    public void setTheloai(String theloai) {
        this.theloai = theloai;
    }
    public String getNoidung() {
        return noidung;
    }
    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }
    public String getAnh() {
        return anh;
    }
    public void setAnh(String anh) {
        this.anh = anh;
    }
    public Review(long id, String tieude, String tacgia, String phanloai, String theloai, String noidung, String anh) {
        super();
        this.id = id;
        this.tieude = tieude;
        this.tacgia = tacgia;
        this.phanloai = phanloai;
        this.theloai = theloai;
        this.noidung = noidung;
        this.anh = anh;
    }
    public Review() {
        super();
        // TODO Auto-generated constructor stub
    }

    
}
