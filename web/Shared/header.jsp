<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </style>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath}/resources/js/newjavascript.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Turbo Ticket Service</title>
</head>
<body>
    <style>
        a img:hover {
            border: 1px solid #777;
        }
        a img{
            vertical-align: middle;    
        
      
            padding-top: 70px;
       
        
            border: none;
       
        
            padding-top: 0px;
        }
        
    </style>
    <p>
    <nav class="navbar" style="background:#bbb">
        <div class="container-fluid">

            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp"><img src="img/logo.png" width="40px" height="30px"></a>
            </div>
            <ul class="nav navbar-nav">

                <li class="active"><a href="${pageContext.request.contextPath}/index.jsp"><b>Home</b></a></li>
                <li><a href="${pageContext.request.contextPath}/Entities/Movies.jsp">Movies</a></li>
                <li><a href="${pageContext.request.contextPath}/Entities/Concert.jsp">Concerts</a></li>
                <li><a href="${pageContext.request.contextPath}/Entities/Sport.jsp">Sport Events</a></li>
                <li><a href="${pageContext.request.contextPath}/Entities/gallery.jsp"><b>Gallery</b></a></li>
                <li><a href="${pageContext.request.contextPath}/Entities/Register.jsp">Register</a></li>
                <li><a href="${pageContext.request.contextPath}/Entities/Login.jsp">Login</a></li>   

            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default "><span class="glyphicon glyphicon-search"></span></button>
            </form>

        </div>
    </nav>

</p>
<div class="container">
