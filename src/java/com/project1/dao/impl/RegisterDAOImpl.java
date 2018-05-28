/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project1.dao.impl;

import com.project1.dao.RegisterDAO;
import com.project1.entity.Register;
import com.project1.util.DbConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RegisterDAOImpl implements RegisterDAO{
     private DbConnection db = new DbConnection();

    @Override
    public int insert(Register t) throws SQLException, ClassNotFoundException {
       String sql = "INSERT INTO register(firstName, lastName, email, password, confirmPassword, phoneNo, dob, gender)"
                + "values(?,?,?,?,?,?,?,?)";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getFirstName());
        stmt.setString(2, t.getLastName());
        stmt.setString(3, t.getEmail());
        stmt.setString(4, t.getPassword());        
        stmt.setString(5, t.getConfirmPassword());
        stmt.setInt(6,(int)t.getPhone());
        stmt.setInt(7, t.getYear());
        stmt.setString(8, t.getGender());
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public int delete(Register t) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Register getById(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Register> search(Register param) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Register> getALL() throws SQLException, ClassNotFoundException {
       List<Register> regList = new ArrayList<>();
        String sql = "SELECT * FROM register ";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Register reg = new Register();
           reg.setFirstName(rs.getString("firstName"));
           reg.setLastName(rs.getString("lastName"));
           reg.setEmail(rs.getString("email"));
           reg.setPassword(rs.getString("password"));
           reg.setConfirmPassword(rs.getString("confirmPassword"));
           reg.setPhone(rs.getInt("phoneNo"));
           reg.setGender(rs.getString("gender"));
            
            regList.add(reg);
        }
        db.close();
        return regList;}

}
