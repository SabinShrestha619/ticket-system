<%@include file="../Shared/header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="../resources/js/bootstrap.js" type="text/javascript"></script>
        <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>

    </head>
    <body>

        <div> 
            <h1 style="color: #761c19; text-align: center"> Gallery </h1>
        </div>

        <div class="container">
            <h2></h2>  
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="../img/gallery5.jpg" alt="gallery image" style="width:100%; height:500px;">
                    </div>

                    <div class="item">
                        <img src="../img/gallery1.jpg" alt="gallery image" style="width:100%; height:500px;">
                    </div>

                    <div class="item">
                        <img src="../img/gallery2.jpg" alt="gallery image" style="width:100%; height:500px;;">
                    </div>

                    <div class="item">
                        <img src="../img/gallery3.jpg" alt="gallery image" style="width:100%; height:500px;">
                    </div>
                    <div class="item">
                        <img src="../img/gallery4.jpg" alt="gallery image" style="width:100%; height:500px;">
                    </div>
                    <div class="item">
                        <img src="../img/gallery6.jpg" alt="gallery image" style="width:100%; height:500px;">
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
    </body>
</html>
<%@include file="../Shared/footer.jsp" %>
