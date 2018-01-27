/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project1.dao.impl;

import com.project1.dao.loginDAO;
import com.project1.entity.Login;
import com.project1.util.loginDb;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sapu
 */
public class loginImpl implements loginDAO {

    private loginDb db = new loginDb();

    @Override
    public List<Login> getALL() throws SQLException, ClassNotFoundException {
        List<Login> loginList = new ArrayList<>();
        String sql = "SELECT * FROM register ";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Login l = new Login();
            l.setLoginId(rs.getInt("Id"));
            l.setName(rs.getString("name"));
            l.setPassword(rs.getString("password"));
            l.setConfirmpassword(rs.getString("confirmpassword"));
            loginList.add(l);
        }
        db.close();
        return loginList;
    }

    @Override
    public int insert(Login log) throws SQLException, ClassNotFoundException {
       String sql = "INSERT INTO register(name,password,confirmpassword)"
                + "values(?,?,?)";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, log.getName());
        stmt.setString(2, log.getPassword());
        stmt.setString(3, log.getConfirmpassword());
        
        int result = db.update();
        db.close();
        return result;}
}
