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
public class Booking {
    private int ticketId,noOfTicket;
    private String movieName, firstName, lastName, showTime,feedback,email;

    public Booking() {
    }

    public Booking(int ticketId, int noOfTicket, String movieName, String firstName, String lastName, String showTime, String feedback, String email) {
        this.ticketId = ticketId;
        this.movieName=movieName;
        this.noOfTicket = noOfTicket;
        this.firstName = firstName;
        this.lastName = lastName;
        this.showTime = showTime;
        this.feedback = feedback;
        this.email = email;
    }
    

    public int getTicketId() {
        return ticketId;
    }

    public void setTicketId(int ticketId) {
        this.ticketId = ticketId;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieName() {
        return movieName;
    }

    public int getNoOfTicket() {
        return noOfTicket;
    }

    public void setNoOfTicket(int noOfTicket) {
        this.noOfTicket = noOfTicket;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
