
<%@page import="com.project1.entity.Movies"%>
<%@page import="com.project1.dao.impl.MoviesDAOImpl"%>
<%@page import="com.project1.dao.MoviesDAO"%>
<%@page import="com.project1.dao.impl.BookingDAOImpl"%>
<%@page import="com.project1.dao.BookingDAO"%>
<%@page import="com.project1.entity.Booking"%>
<%@include file="../Shared/header.jsp"%>
<h1> Book Now </h1>


<h2 align="center"> Enter Details</h2>
<%if (request.getMethod().equalsIgnoreCase("post")) {

        BookingDAO bookingDAO = new BookingDAOImpl();
        Booking booking = new Booking();
        booking.setMovieName(request.getParameter("movie_name"));
        booking.setFirstName(request.getParameter("first_name"));
        booking.setLastName(request.getParameter("last_name"));
        booking.setEmail(request.getParameter("email"));
        booking.setShowTime(request.getParameter("showtime"));
        booking.setNoOfTicket(Integer.parseInt(request.getParameter("ticket_no")));
        booking.setFeedback(request.getParameter("comment"));
        bookingDAO.insert(booking);
        response.sendRedirect("../index.jsp");
    }
%>
<%
    int id = 1;
    MoviesDAO moviesDao = new MoviesDAOImpl();
    Movies movies = moviesDao.getById(id);
  %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="../resources/js/bootstrap.js" type="text/javascript"></script>
        <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>

    </head>
    <style>
        .form{
            float: left;
            width: 50%;
            height: 100%;

        }
        .pad15{
            width: 30%;
            float: left;
        }
        h2{
            alignment-adjust: middle;
        }
    </style>

    <div class="pad15">
        <a href="https://en.wikipedia.org/wiki/Star_Wars:_The_Last_Jedi">
            <img src="https://images.fandango.com/ImageRenderer/200/0/redesign/static/img/default_poster.png/0/images/masterrepository/Fandango/189929/SB_Payoff_1-Sht_v6_Lg_TM_sm.jpg"></a>
    </div>
    <div class="form" border="1px">
        <form name="form2" method="post" action="">
            <div class="form-group">
                <label>Movie Selected</label>
                <input type="text" name="movie_name" required="required"
                       value="<%= request.getParameter("moviename")%>"  readonly class="form-control"/>

            </div>
            <div class="form-group">
                <label>First Name:</label>
                <input type="text" name="first_name" required="required"
                       placeholder="Enter First Name" class="form-control"/>

            </div>
            <div class=""form-group>
                <label>Last Name:</label>
                <input type="text" name="last_name" required="required"
                       placeholder="Enter Last Name" class="form-control"/>

            </div>
            <div class="form-group">
                <label>Email:</label>
                <input type="text" name="email" required="required"
                       placeholder="Enter Email Id" class="form-control"/>

            </div>

            <div class="form-group">
                <label>Show Time:</label>
                <select class="form-control" placeholder="Show Time" name="showtime">
                    <option >Morning</option>
                    <option >Noon</option>
                    <option >Matinee</option>
                    <option >Evening</option>
                </select>
            </div>
            <div class="form-group">
                <label>No. Of Tickets:</label>
                <input type="Number" name="ticket_no" required="required"
                       placeholder="Enter Number of Tickets" class="form-control"/>

            </div>

            <div class="form-group">
                <label>Feedback:</label>

                <textarea class="form-control" rows="2" name="comment"></textarea>
            </div> 
            <button type="submit" class="btn btn-success">Book</button>
            <a href="../index.jsp" class="btn btn-danger">Cancel</a>

    </div>
</form>


</div>

