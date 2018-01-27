<%@page import="com.project1.dao.impl.loginImpl"%>
<%@page import="com.project1.dao.loginDAO"%>
<%@page import="com.project1.entity.Login" %>
<% loginDAO logindao = new loginImpl();
    for (Login b : logindao.getALL()) {

    }%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="../resources/js/bootstrap.js" type="text/javascript"></script>
        <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>
    
    </head>
    <div class="form" border="1px">
        <form name="loginform" method="post" action="">
            <div class="form-group">
                <label>Username:</label>
                <input type="text" name="username" required="required"
                       placeholder="Enter First Name" class="form-control"/>

            </div>
            <div class=""form-group>
                <label>Password:</label>
                <input type="text" name="password" required="required"
                       placeholder="Enter Last Name" class="form-control"/>
            </div>
        </form>
    </div>