package com.hjm.projectHello1.dto;

public class LoginDTO {

    private String user_id;
    private String passwd;
    private String name_kor;
    private boolean useCookie;

    public String getUser_id() {
        return user_id;
    }
    public String getPasswd() { return passwd; }
    public String getName_kor() { return name_kor; }


    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }
    public void setName_kor(String name_kor) { this.name_kor = name_kor; }
    public void setUseCookie(boolean useCookie) {
        this.useCookie = useCookie;
    }

}
