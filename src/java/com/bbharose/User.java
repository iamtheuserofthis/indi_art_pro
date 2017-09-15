package com.bbharose;

import java.util.Date;

public class User {

    private String username;
    private String passwd;
    private String roleName = "user";
    private String gender;
    private String sQue;
    private String sAns;
    private String email;
    private Date dob;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    

    public User(String username, String passwd, String gender, String sQue, String sAns, Date dob,String email) {
        this.username = username;
        this.passwd = passwd;
        this.gender = gender;
        this.sQue = sQue;
        this.sAns = sAns;
        this.dob = dob;
        this.email = email;
    }

    public User() {
    }

    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getsQue() {
        return sQue;
    }

    public void setsQue(String sQue) {
        this.sQue = sQue;
    }

    public String getsAns() {
        return sAns;
    }

    public void setsAns(String sAns) {
        this.sAns = sAns;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }
    
    

}
