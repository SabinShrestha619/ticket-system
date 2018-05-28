/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project1.dao.impl;

import com.project1.dao.SearchDAO;
import com.project1.entity.Booking;
import com.project1.util.DbConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sapu
 */
public class SearchDAOImpl implements SearchDAO {

    private DbConnection db = new DbConnection();

    @Override
    public List<Booking> search(String Name) throws SQLException, ClassNotFoundException {
        List<Booking> bookingList = new ArrayList<>();
        String sql = "SELECT * FROM booking "
                + "where firstname like '%" + Name + "%'"
                + "or lastname like '%" + Name + "%'";
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

            bookingList.add(b);
        }
        db.close();
        return bookingList;
    }

}
