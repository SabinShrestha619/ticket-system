<%@page import="com.lfa.sms.entity.Courses"%>
<%@page import="com.lfa.sms.dao.impl.CoursesDAOImpl"%>
<%@page import="com.lfa.sms.dao.CoursesDAO"%>
<%@include file="/shared/header.jsp"%>
<h1> Courses Details</h1>
<div class="container">
   
    <!DOCTYPE html>
    <html>
        <head>
        <h1> Faculties Details </h1>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        </head>
        <body>
            <form action="searchFaculties.jsp" method="GET">
                <B> Search Index:</B> <input type="text" name="Name">
                <input type ="submit" value="Search"></form>
        </body>




          <div class="pull-right">
            <p>
                <a href="${pageContext.request.contextPath}/add/addcourse.jsp" class="btn btn-primary btn-sm">
               <span class="glyphicon glyphicon-plus "> </span> Add Course</a>
            </p>
        </div>
         <table class="table table-bordered table-striped table-hover">
            <tr>
    <th> Course Id </th>
    <th> Course Name </th>
    <th> Course Code </th>
    <th> Action </th>
            </tr>
            <tr>
                <%CoursesDAO courseDAO = new CoursesDAOImpl();
        for (Courses c : courseDAO.getAll()) {%>
                      
              <td><%=c.getCourse_id()%></td>
            
              <td><%=c.getCourse_name()%></td>
              
              <td><%=c.getCourse_code()%></td>
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
                    
                <%@include file="/shared/footer.jsp"%>