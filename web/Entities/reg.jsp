<%-- 
    Document   : reg.jsp
    Created on : Dec 24, 2017, 12:38:05 PM
    Author     : sapu
--%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="com.project1.entity.Login"%>
<%@page import="com.project1.dao.impl.loginImpl"%>
<%@page import="com.project1.dao.loginDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%if (request.getMethod().equalsIgnoreCase("post")) {
        loginDAO logDao = new loginImpl();
        Login login = new Login();
        String plaintext = request.getParameter("pass");
        StringBuilder hash = new StringBuilder();
        try {
            MessageDigest sha = MessageDigest.getInstance("SHA-1");
            byte[] hashedBytes = sha.digest(plaintext.getBytes());
            char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                'a', 'b', 'c', 'd', 'e', 'f'};
            for (int idx = 0; idx < hashedBytes.length; ++idx) {
                byte b = hashedBytes[idx];
                hash.append(digits[(b & 0xf0) >> 4]);
                hash.append(digits[b & 0x0f]);
            }
        } catch (NoSuchAlgorithmException e) {
            // handle error here.
        }

        String hashtext = hash.toString();
        login.setName(request.getParameter("name"));
        login.setPassword(hashtext);
        login.setConfirmpassword(request.getParameter("conpass"));
        logDao.insert(login);
        response.sendRedirect("../index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>database</title>
    </head>
    <body>

        <form name="f1" method="post" action="">
            Name:<input type="text" name="name"></input><br>
            pass:<input type="password" name="pass"><br>
            confirm:<input type="password" name="conpass"><br>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
