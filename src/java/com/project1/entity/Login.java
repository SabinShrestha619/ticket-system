/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project1.entity;

/**
 *
 * @author sapu
 */
public class Login {

    private int loginId;
    private String name, password, confirmpassword;

    public Login() {
    }

    public Login(int loginId, String name, String password, String confirmpassword) {
        this.loginId = loginId;
        this.name = name;
        this.password = password;
        this.confirmpassword = confirmpassword;
    }

    public int getLoginId() {
        return loginId;
    }

    public void setLoginId(int loginId) {
        this.loginId = loginId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmpassword() {
        return confirmpassword;
    }

    public void setConfirmpassword(String confirmpassword) {
        this.confirmpassword = confirmpassword;
    }

}
