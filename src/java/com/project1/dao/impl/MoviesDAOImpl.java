/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project1.dao.impl;

import com.project1.dao.MoviesDAO;
import com.project1.entity.Movies;
import com.project1.util.DbConnection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sapu
 */
public class MoviesDAOImpl implements MoviesDAO {

    private DbConnection db = new DbConnection();

    @Override
    public List<Movies> getALL() throws SQLException, ClassNotFoundException {
        List<Movies> moviesList = new ArrayList<>();
        String sql = "SELECT * FROM movies ";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Movies m = new Movies();
            m.setMovieId(rs.getInt("movieId"));
            m.setMovieName(rs.getString("movieName"));
            m.setReleaseDate(rs.getDate("releaseDate"));
            m.setCast(rs.getString("cast"));
            moviesList.add(m);
        }
        db.close();
        return moviesList;
    }

    @Override
    public int insert(Movies t) throws SQLException, ClassNotFoundException {
       String sql = "INSERT INTO movies(movieName,releaseDate,cast)"
                + "values(?,?,?)";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getMovieName());
        stmt.setDate(2, (Date) t.getReleaseDate());
        stmt.setString(3, t.getCast());
        
        int result = db.update();
        db.close();
        return result;}

    @Override
    public int delete(Movies t) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Movies getById(int id) throws SQLException, ClassNotFoundException {
       Movies m = null;
        String sql = "SELECT movieName FROM movies where movieId=? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = db.query();
        if (rs.next()) {
            m = new Movies();
           // m.setMovieId(rs.getInt("movieId"));
            m.setMovieName(rs.getString("movieName"));
            //m.setReleaseDate(rs.getDate("releaseDate"));
            //m.setCast(rs.getString("cast"));
        }
        db.close();
        return m;
    }

    @Override
    public List<Movies> search(Movies param) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

