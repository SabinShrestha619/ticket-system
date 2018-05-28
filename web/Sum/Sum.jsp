
<%@page import="com.project1.entity.Booking"%>
<%@page import="com.project1.dao.impl.BookingDAOImpl"%>
<%@page import="com.project1.dao.BookingDAO"%>
<%@include file="../Shared/header.jsp"%>
<%! int sum=0;%> 
<%BookingDAO bookDAO = new BookingDAOImpl();

                    for (Booking b : bookDAO.getALL()) {%>

<%                    sum = sum + b.getNoOfTicket();%>

<%}%><b>
    <% out.print("The total sum of Tickets booked is:"+ sum);%></b>
    <br/>
    
<b>
    <% out.print("The total sum of amount Collected is:Rs."+ sum*400);%></b>

<%@include file="../Shared/footer.jsp"%>