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
        
        nav{
            padding-left: 30px ;
            padding-right: 30px;
            margin-left: 30px;
            margin-right:30px;
        }
        
    </style>
    <p>
    <nav class="navbar" style="background:#bbb">
        <div class="container-fluid">

            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/img/logo.png" width="40px" height="30px"></a>
            </div>
            <ul class="nav navbar-nav">

                <li class="active"><a href="${pageContext.request.contextPath}/index.jsp"><b>Home</b></a></li>
                <li><a href="${pageContext.request.contextPath}/Entities/Movies.jsp">Movies</a></li>
                <li><a href="${pageContext.request.contextPath}/Entities/Concert.jsp">Concerts</a></li>
                <li><a href="${pageContext.request.contextPath}/Entities/Sport.jsp">Sport Events</a></li>
                <li><a href="${pageContext.request.contextPath}/Entities/gallery.jsp"><b>Gallery</b></a></li>
                <li><a href="${pageContext.request.contextPath}/customer/customer.jsp">Customer List</a></li>
               
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
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
    <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>

</head>
<div class="container">

    <div align="center" id="myCarousel" class="carousel slide" data-ride="carousel" >
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" >
            <div class="item active">
                <img src="../img/conc.jpg" alt="Los Angeles" style="width:100%; height:500px;">
            </div>

            <div class="item">
                <img src="../img/ticket.jpg" alt="Chicago" style="width:100%; height:500px;">
            </div>

            <div class="item">
                <img src="../img/mo-ticket.jpg" alt="New york" style=" width:100%; height:500px;">
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<%@include file="../Shared/footer.jsp" %>

