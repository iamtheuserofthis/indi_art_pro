
package com.bbharose;

import java.util.Date;

public class AuthUser {
private String email;
private String userName;
private String role;
private int verification;
private Date dob;
private String picName;

    public AuthUser(String email, String userName, String role, int verification, Date dob,String picName) {
        this.email = email;
        this.userName = userName;
        this.role = role;
        this.verification = verification;
        this.dob = dob;
        this.picName = picName;
    }

    public AuthUser() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getVerification() {
        return verification;
    }

    public void setVerification(int verification) {
        this.verification = verification;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public void setPicName(String picName){
        this.picName = picName; 
    }
    public String getPicName(){
        return picName;
    }


}
