/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project1.dao.impl;

import com.project1.dao.BookingDAO;
import com.project1.entity.Booking;
import com.project1.util.DbConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sapu
 */
public class BookingDAOImpl implements BookingDAO{
     private DbConnection db = new DbConnection();


  
    @Override
    public int insert(Booking t) throws SQLException, ClassNotFoundException {
       String sql = "INSERT INTO booking(firstname,lastname,email,showtime,no_of_tickets,feedback)"
                + "values(?,?,?,?,?,?)";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getFirstName());
        stmt.setString(2, t.getLastName());
        stmt.setString(3, t.getEmail());
        stmt.setString(4, t.getShowTime());        
        stmt.setInt(5, t.getNoOfTicket());
        stmt.setString(6,t.getFeedback());
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public int delete(Booking t) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Booking getById(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Booking> search(Booking param) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Booking> getALL() throws SQLException, ClassNotFoundException {
       List<Booking> moviesList = new ArrayList<>();
        String sql = "SELECT * FROM booking ";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Booking b = new Booking();
            b.setTicketId(rs.getInt("Id"));
            b.setFirstName(rs.getString("firstname"));
            b.setLastName(rs.getString("lastname"));
            b.setEmail(rs.getString("email"));
            b.setShowTime(rs.getString("showtime"));
            b.setNoOfTicket(rs.getInt("no_of_tickets"));
            b.setFeedback(rs.getString("feedback"));
            
            moviesList.add(b);
        }
        db.close();
        return moviesList;}
}
