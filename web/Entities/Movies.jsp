<%@include file="../Shared/header.jsp"%>

<h1> Now Showing</h1>
<div class="container">

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
            <style type="text/css">
                body{
                    background-color: black;
                }
                .MultiCarousel { float: left; overflow: hidden; padding: 15px; width: 100%; position:relative; }
                .MultiCarousel .MultiCarousel-inner { transition: 1s ease all; float: left; }
                .MultiCarousel .MultiCarousel-inner .item { float: left; 
                                                            height: 400px;
                                                            background-color: #f1f1f1;}
                .MultiCarousel .MultiCarousel-inner .item > div { text-align: center; padding:10px; margin:10px; background-color: white; color:#666;}
                .MultiCarousel .leftLst, .MultiCarousel .rightLst { position:absolute; border-radius:50%;top:calc(50% - 20px); }
                .MultiCarousel .leftLst { left:0; }
                .MultiCarousel .rightLst { right:0; }

                .MultiCarousel .leftLst.over, .MultiCarousel .rightLst.over { pointer-events: none; background:#ccc; }
                .MultiCarousel .MultiCarousel-inner .item .pad15 img{
                    width: 100%;
                    height: 270px;
                }
            </style>
            <script type="text/javascript">
                $(document).ready(function () {
                    var itemsMainDiv = ('.MultiCarousel');
                    var itemsDiv = ('.MultiCarousel-inner');
                    var itemWidth = "";
                    $('.leftLst, .rightLst').click(function () {
                        var condition = $(this).hasClass("leftLst");
                        if (condition)
                            click(0, this);
                        else
                            click(1, this)
                    });
                    ResCarouselSize();
                    $(window).resize(function () {
                        ResCarouselSize();
                    });
                    //this function define the size of the items
                    function ResCarouselSize() {
                        var incno = 0;
                        var dataItems = ("data-items");
                        var itemClass = ('.item');
                        var id = 0;
                        var btnParentSb = '';
                        var itemsSplit = '';
                        var sampwidth = $(itemsMainDiv).width();
                        var bodyWidth = $('body').width();
                        $(itemsDiv).each(function () {
                            id = id + 1;
                            var itemNumbers = $(this).find(itemClass).length;
                            btnParentSb = $(this).parent().attr(dataItems);
                            itemsSplit = btnParentSb.split(',');
                            $(this).parent().attr("id", "MultiCarousel" + id);
                            if (bodyWidth >= 1200) {
                                incno = itemsSplit[3];
                                itemWidth = sampwidth / incno;
                            } else if (bodyWidth >= 992) {
                                incno = itemsSplit[2];
                                itemWidth = sampwidth / incno;
                            } else if (bodyWidth >= 768) {
                                incno = itemsSplit[1];
                                itemWidth = sampwidth / incno;
                            } else {
                                incno = itemsSplit[0];
                                itemWidth = sampwidth / incno;
                            }
                            $(this).css({'transform': 'translateX(0px)', 'width': itemWidth * itemNumbers});
                            $(this).find(itemClass).each(function () {
                                $(this).outerWidth(itemWidth);
                            });
                            $(".leftLst").addClass("over");
                            $(".rightLst").removeClass("over");
                        });
                    }
                    //this function used to move the items
                    function ResCarousel(e, el, s) {
                        var leftBtn = ('.leftLst');
                        var rightBtn = ('.rightLst');
                        var translateXval = '';
                        var divStyle = $(el + ' ' + itemsDiv).css('transform');
                        var values = divStyle.match(/-?[\d\.]+/g);
                        var xds = Math.abs(values[4]);
                        if (e == 0) {
                            translateXval = parseInt(xds) - parseInt(itemWidth * s);
                            $(el + ' ' + rightBtn).removeClass("over");
                            if (translateXval <= itemWidth / 2) {
                                translateXval = 0;
                                $(el + ' ' + leftBtn).addClass("over");
                            }
                        } else if (e == 1) {
                            var itemsCondition = $(el).find(itemsDiv).width() - $(el).width();
                            translateXval = parseInt(xds) + parseInt(itemWidth * s);
                            $(el + ' ' + leftBtn).removeClass("over");
                            if (translateXval >= itemsCondition - itemWidth / 2) {
                                translateXval = itemsCondition;
                                $(el + ' ' + rightBtn).addClass("over");
                            }
                        }
                        $(el + ' ' + itemsDiv).css('transform', 'translateX(' + -translateXval + 'px)');
                    }
                    //It is used to get some elements from btn
                    function click(ell, ee) {
                        var Parent = "#" + $(ee).parent().attr("id");
                        var slide = $(Parent).attr("data-slide");
                        ResCarousel(ell, Parent, slide);
                    }
                });
            </script>
            <div class="container">
                <div class="row">
                    <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
                        <div class="MultiCarousel-inner">
                            <div class="item">
                                <div class="pad15">
                                    <a href="https://en.wikipedia.org/wiki/Star_Wars:_The_Last_Jedi">	<img src="https://images.fandango.com/ImageRenderer/200/0/redesign/static/img/default_poster.png/0/images/masterrepository/Fandango/189929/SB_Payoff_1-Sht_v6_Lg_TM_sm.jpg"></a>
                                </div>
                                <div>
                                    Star Wars:The Last Jedi
                                    <form action="../Buy/buyMovie.jsp" method="GET">
                                        <input type="text" value="Star Wars: The Last Jedi" id="1" hidden name="moviename">
                                        <input type="submit" onclick="location.href = '../Buy/buyMovie.jsp';" style="font-style: none;" class="btn btn-danger btn-sm" value="Buy Tickets">
                                    </form>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="https://images.fandango.com/ImageRenderer/200/0/redesign/static/img/default_poster.png/0/images/masterrepository/Fandango/185722/JMNJ_DOM_TSR_1SHT_large_thumbnail.jpg">
                                </div>
                                <div>
                                    JUMANJI
                                    <form action="../Buy/buyMovie.jsp" method="GET">
                                        <input type="text" value="Jumanji" id="1" hidden name="moviename">
                                        <input type="submit" onclick="location.href = '../Buy/buyMovie.jsp';" style="font-style: none;" class="btn btn-danger btn-sm" value="Buy Tickets">
                                    </form>

                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="https://images.fandango.com/ImageRenderer/200/0/redesign/static/img/default_poster.png/0/images/masterrepository/Fandango/192076/TheGreatestShowman2017.jpg">
                                </div>
                                <div>
                                    The Greatest Showman
                                    <form action="../Buy/buyMovie.jsp" method="GET">
                                        <input type="text" value="THE GREATEST SHOWMAN" id="1" hidden name="moviename">
                                        <input type="submit" onclick="location.href = '../Buy/buyMovie.jsp';" style="font-style: none;" class="btn btn-danger btn-sm" value="Buy Tickets">
                                    </form>
                                </div>

                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="https://images.fandango.com/ImageRenderer/200/0/redesign/static/img/default_poster.png/0/images/masterrepository/Fandango/188389/PP3_Tsr1Sheet_LastCall_RGB_.jpg">
                                </div>
                                <div>
                                    Pitch Perfect 3
                                    <form action="../Buy/buyMovie.jsp" method="GET">
                                        <input type="text" value="Pitch Perfect 3" id="1" hidden name="moviename">
                                        <input type="submit" onclick="location.href = '../Buy/buyMovie.jsp';" style="font-style: none;" class="btn btn-danger btn-sm" value="Buy Tickets">
                                    </form>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="https://images.fandango.com/ImageRenderer/200/0/redesign/static/img/default_poster.png/0/images/masterrepository/Fandango/136640/DS_Online_Teaser_Vertical.sm.jpg">
                                </div>   
                                <div>
                                    Downsizing
                                    <form action="../Buy/buyMovie.jsp" method="GET">
                                        <input type="text" value="Downsizing" id="1" hidden name="moviename">
                                        <input type="submit" onclick="location.href = '../Buy/buyMovie.jsp';" style="font-style: none;" class="btn btn-danger btn-sm" value="Buy Tickets">
                                    </form>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="https://images.fandango.com/ImageRenderer/200/0/redesign/static/img/default_poster.png/0/images/masterrepository/Fandango/193121/3bb_KEY_1SHEET_101_F3_sm.jpg">
                                </div>
                                <div>
                                    Three Billboards
                                    <form action="../Buy/buyMovie.jsp" method="GET">
                                        <input type="text" value="Three Billboards" id="1" hidden name="moviename">
                                        <input type="submit" onclick="location.href = '../Buy/buyMovie.jsp';" style="font-style: none;" class="btn btn-danger btn-sm" value="Buy Tickets">
                                    </form>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="https://images.fandango.com/ImageRenderer/200/0/redesign/static/img/default_poster.png/0/images/masterrepository/Fandango/203826/DH-Updated-Poster---v2.jpg">
                                </div>
                                <div>
                                    Darkest Hour
                                    <form action="../Buy/buyMovie.jsp" method="GET">
                                        <input type="text" value="Darkest Hour" id="1" hidden name="moviename">
                                        <input type="submit" onclick="location.href = '../Buy/buyMovie.jsp';" style="font-style: none;" class="btn btn-danger btn-sm" value="Buy Tickets">
                                    </form>
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="on.jpg">
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="on.jpg">
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="on.jpg">
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="on.jpg">
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="on.jpg">
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="on.jpg">
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="on.jpg">
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="on.jpg">
                                </div>
                            </div>
                            <div class="item">
                                <div class="pad15">
                                    <img src="on.jpg">
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-primary leftLst"><</button>
                        <button class="btn btn-primary rightLst">></button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <br/><br/><br/>
                        <hr/>
                        <p>Copyright:Sabin Shrestha</p>
                    </div>
                </div>
            </div>
        </body>
    </html>                   
    <%@include file="../Shared/footer.jsp"%>