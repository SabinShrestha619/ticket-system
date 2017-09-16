/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project1.dao;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author sapu
 */
public interface GenericDAO<T> {
    List<T> getALL() throws SQLException,ClassNotFoundException;
    int insert(T t) throws SQLException, ClassNotFoundException;
    int delete(T t) throws SQLException, ClassNotFoundException;
    int update(int id) throws SQLException, ClassNotFoundException;
    T getById(int id) throws SQLException,ClassNotFoundException;
    List<T> search(T param) throws SQLException,ClassNotFoundException;
 }

