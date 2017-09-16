<%@include file="../Shared/header.jsp" %>
<div> 
<h1 style="color: #761c19; text-align: center">Cool Pictures Of Our Bright Students</h1>
</div>

<div class="container">
  <h2>Cool Pictures Of Our Students</h2>  
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
          <img src="img/bidhata.jpg" alt="Bidhata" style="width:100%;">
      </div>

      <div class="item">
          <img src="img/suman.jpg" alt="Suman" style="width:100%;">
      </div>
    
      <div class="item">
          <img src="img/sarita.jpg" alt="Sarita" style="width:100%;">
      </div>
        
         <div class="item">
             <img src="img/pravash.jpg" alt="Pravash" style="width:100%;">
      </div>
         <div class="item">
             <img src="img/Sabin.jpg" alt="Sabin" style="width:100%;">
      </div>
         <div class="item">
             <img src="img/sushank.jpg" alt="Sushank" style="width:100%;">
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
    