<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="com.project1.entity.Register"%>
<%@page import="com.project1.dao.impl.RegisterDAOImpl"%>
<%@page import="com.project1.dao.RegisterDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%if (request.getMethod().equalsIgnoreCase("post")) {
        RegisterDAO regDao = new RegisterDAOImpl();
        Register register = new Register();
        String plaintext = request.getParameter("password");
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
        register.setFirstName(request.getParameter("firstName"));
        register.setLastName(request.getParameter("lastName"));
        register.setEmail(request.getParameter("inputEmail"));
        register.setPassword(hashtext);
        register.setConfirmPassword(request.getParameter("confirmPassword"));
        register.setPhone(Integer.parseInt(request.getParameter("phoneNumber")));
        register.setYear(Integer.parseInt(request.getParameter("year")));
        register.setGender(request.getParameter("genderRadios"));
        regDao.insert(register);
    response.sendRedirect("../index.jsp");
} 
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/resources/js/newjavascript.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>

        <style type="text/css">
            form{
                border: 3px solid #f1f1f1;
                padding-bottom: 10px;
                padding-left: 10px;
                padding:20px;
                background: #E5E5E5         
            }

            body {
                background-image: url("../img/movie2.jpg");
                background-position: center;
                background-size: 100%;
            }
            h1{
                margin: 30px 0;
                padding: 0 200px 15px 0;
                border-bottom: 1px solid #E5E5E5;
                background: #E5E5E5     
            }
            .bs-example{
                width:40%;

            }
        </style>
    </head>
    <body>
        <div align="center">
            <div class="bs-example"  class="container">
                <h1>Registration Form</h1>
                <form class="form-horizontal" border="1" action="" method="post">
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="firstName">First Name:</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="firstName" placeholder="First Name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="lastName">Last Name:</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="lastName" placeholder="Last Name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="inputEmail">Email Address:</label>
                        <div class="col-xs-9">
                            <input type="email" class="form-control" name="inputEmail" placeholder="Email Address" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="password">Password:</label>
                        <div class="col-xs-9">
                            <input type="password" class="form-control" name="password" placeholder="Password" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" for="ConfirmPassword">Confirm Password:</label>
                        <div class="col-xs-9">
                            <input type="password" class="form-control" name="confirmPassword" placeholder="Password" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-3" for="phoneNumber">Phone Number:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="phoneNumber" placeholder="Phone Number" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="control-label col-xs-3">Date of Birth:</label>
                        <div class="col-xs-3">
                            <input type="Number" class="form-control" id="day" placeholder="Date" >


                        </div>
                        <div class="col-xs-3" >
                            <select class="form-control">
                                <option>Month</option>
                                <option>Jan</option>
                                <option>Feb</option> 
                                <option>Mar</option>
                                <option>Apr</option>
                            </select>
                        </div>
                        <div class="col-xs-3">
                            <input type="Number" class="form-control" name="year" placeholder="Year" autocomplete="on">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Gender:</label>
                        <div class="col-xs-2">
                            <label class="radio-inline">
                                <input type="radio" name="genderRadios" value="male" required> Male
                            </label>
                        </div>
                        <div class="col-xs-2">
                            <label class="radio-inline">
                                <input type="radio" name="genderRadios" value="female" required> Female
                            </label>
                        </div>
                    </div>
                    <div align="left" class="form-group">
                        <div class="col-xs-offset-3 col-xs-9">
                            <label class="checkbox-inline">
                                <input type="checkbox" value="news"> Send me latest news and updates.
                            </label>
                        </div>
                    </div>
                    <div align="left" class="form-group">
                        <div class="col-xs-offset-3 col-xs-9">
                            <label class="checkbox-inline">
                                <input type="checkbox" value="agree">  I agree to the <a href="#">Terms and Conditions</a>.
                            </label>
                        </div>
                    </div>
                    <br>
                    <div align="left" class="form-group">
                        <div class="col-xs-offset-3 col-xs-9">
                            <input type="submit" class="btn btn-primary" value="Submit">
                            <input type="reset" class="btn btn-default" value="Reset">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>                            