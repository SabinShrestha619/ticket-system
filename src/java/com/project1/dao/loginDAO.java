/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project1.dao;

import java.sql.SQLException;
import java.util.List;
import com.project1.entity.Login;
/**
 *
 * @author sapu
 */
public interface loginDAO {
    List<Login> getALL() throws SQLException,ClassNotFoundException;
    int insert(Login log) throws SQLException, ClassNotFoundException;
    
}
