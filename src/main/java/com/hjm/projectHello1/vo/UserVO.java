package com.hjm.projectHello1.vo;


public class UserVO {

    private String user_id;
    private String passwd;
    private String name_kor;
    private String userEmail;
    //private Date userLgoinDate;
    private String userSignature;
    private int userPoint;

    public String getUser_id() {
        return user_id;
    }

    public String getPasswd() {
        return passwd;
    }

    public String getName_kor() {
        return name_kor;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public void setName_kor(String name_kor) {
        this.name_kor = name_kor;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
}