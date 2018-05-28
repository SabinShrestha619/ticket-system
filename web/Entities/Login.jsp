<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="com.mysql.jdbc.Util"%>
<%@page import="com.project1.dao.impl.RegisterDAOImpl"%>
<%@page import="com.project1.dao.RegisterDAO"%>
<%@page import="com.project1.entity.Register" %>


<%if (request.getMethod().equalsIgnoreCase("post")) {
        // JOptionPane.showMessageDialog(null, "this is a pop up message");

        RegisterDAO RegDao = new RegisterDAOImpl();
        String plaintext = request.getParameter("psw");
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

//Register login=new Register();
        for (Register b : RegDao.getALL()) {
//if(b.getName().equalsIgnoreCase("saas")){
            if ((request.getParameter("uname")).equalsIgnoreCase(b.getFirstName())) {
                if ((hashtext).equalsIgnoreCase(b.getPassword())) {

                    response.sendRedirect("../Entities/Admin.jsp");
                    break;
                } %>
            <script type="text/javascript">
              alert("Form has been submitted");
            </script>            
            <script type="text/javascript"> window.onload = alertName; 
            </script><%
                response.sendRedirect("../Entities/Login.jsp");
//   break;     
            }
        }
//  response.sendRedirect("../index.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <style>
        form {
            border: 3px solid #f1f1f1;
            width: 40%;
            height:100%;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }
        body {
            background-image: url("../img/movies-bg.jpg");
            background-position: center;
            background-size: 100%;
        }
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cancelbtn {
                width: 100%;
            }
        }

    </style>
    <body>
        <div align="center">
            <h2>Login Form</h2>


            <form name="loginform" method="post" action="">
                <div class="imgcontainer">
                    <img src="../img/avatar.png" alt="Avatar" class="avatar">
                </div>

                <div class="container">
                    <div align="left">
                        <label ><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="uname" required>

                        <label ><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="psw" required>
                    </div>

                    <button type="submit">Login</button>
                    <input type="checkbox" checked="checked"> Remember me
                </div>

                <div class="container" align="left" style="background-color:#f1f1f1">
                    <div align="center">Not Member Yet? <a href="Register.jsp">Sign Up</a></div>
                    <button type="button" class="cancelbtn">Cancel</button>
                    <span class="psw">Forgot <a href="#">password?</a></span>
                </div>
            </form>
        </div>

    </body>
</html>
