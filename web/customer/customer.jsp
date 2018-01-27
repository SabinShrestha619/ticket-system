
<%@page import="com.project1.entity.Booking"%>
<%@page import="com.project1.dao.impl.BookingDAOImpl"%>
<%@page import="com.project1.dao.BookingDAO"%>
<%@include file="../Shared/header.jsp"%>
<h1> Booking Details</h1>
<div class="container">

    <!DOCTYPE html>
    <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <script src="../resources/js/bootstrap.js" type="text/javascript"></script>
            <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>
            <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
        </head>
        <body>
            <form action="searchCustomer.jsp" method="GET">
                <B> Search Index:</B> <input type="text" name="Name">
                <input type ="submit" value="Search"></form>
        </body>
<br>


           <table class="table table-bordered table-striped table-hover">
            <tr>
                <th> Ticket Id </th>
                <th> First Name </th>
                <th> Last Code </th>
                <th> Email </th>
                <th> Show Time </th>
                <th> No. of Tickets</th>
                <th> Feedback </th>

                <th> Action </th>
            </tr>
            <tr>
                <%BookingDAO bookingDAO = new BookingDAOImpl();
                    for (Booking b : bookingDAO.getALL()) {%>

                <td><%=b.getTicketId()%></td>
                <td><%=b.getFirstName()%></td>
                <td><%=b.getLastName()%></td>
                <td><%=b.getEmail()%></td>
                <td><%=b.getShowTime()%></td>
                <td><%=b.getNoOfTicket()%></td>
                <td><%=b.getFeedback()%></td>
                <td>
                    <a href="editcourse.jsp?id=" class="btn btn-success">
                        <span class="glyphicon glyphicon-pencil"></span>

                    </a>
                    <a href="deletecourse.jsp?id=" class="btn btn-danger" onclick="return confirm('Are you sure to delete?')">
                        <span class="glyphicon glyphicon-trash"></span>  
                </td>
            </tr>

            <%}%>
        </table>

        <%@include file="../Shared/footer.jsp"%>