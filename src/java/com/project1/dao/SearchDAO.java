/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project1.dao;

import com.project1.entity.Booking;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author sapu
 */
public interface SearchDAO {
    
     List<Booking> search(String Name) throws SQLException, ClassNotFoundException;
}
