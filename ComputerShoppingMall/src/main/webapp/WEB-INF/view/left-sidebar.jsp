<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>MaxiBiz Bootstrap Business Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
  <link href="lib/hover/hoverex-all.css" rel="stylesheet">
  <link href="lib/jetmenu/jetmenu.css" rel="stylesheet">
  <link href="lib/owl-carousel/owl-carousel.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="css/colors/blue.css">

  <!-- =======================================================
    Template Name: MaxiBiz
    Template URL: https://templatemag.com/maxibiz-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>
<body>
  <!-- header적용 -->
  <jsp:include page="header.jsp"></jsp:include>

  <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.jsp">Home</a></li>
          <li>Page Left Sidebar</li>
        </ul>
        <h2>PAGE LEFT SIDEBAR</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <div class="search-bar">
          <form action="" method="get">
            <fieldset>
              <input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="Search..." />
            </fieldset>
          </form>
        </div>
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->

  <section class="section1">
    <div class="container clearfix">
      <div class="content pull-right col-lg-8 col-md-8 col-sm-8 col-xs-12 clearfix">
        <h2>Random Text Title</h2>
        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet erat quis nibh vehicula, condimentum placerat lectus iaculis. Nam ultricies nisi vel ligula pulvinar, quis dapibus velit iaculis. In hac habitasse platea dictumst. In vitae
          nunc tincidunt, euismod nibh sit amet, convallis arcu. Vestibulum feugiat auctor auctor. Phasellus lacinia auctor metus, in posuere justo egestas eget. Vivamus ornare tincidunt sagittis. Nunc pretium magna eu est condimentum malesuada. Nunc
          arcu nulla, fringilla in sodales sed, laoreet eget mi. Fusce ac suscipit turpis, sed porttitor mauris. </p>
        <img class="img-resposnive" src="img/demo_01.jpg" alt="">

        <p> Integer convallis justo augue, et condimentum tortor scelerisque ut. Ut mattis ullamcorper lacinia. Donec dignissim eu dui non ultrices. Fusce ullamcorper suscipit ante, eget ultrices ipsum faucibus sagittis. Nunc eu elit orci. Etiam id orci vitae
          mauris bibendum molestie sit amet sed neque. Cras malesuada vulputate orci sed molestie. Phasellus accumsan nunc sit amet egestas suscipit. Duis non ipsum ac risus consequat dapibus placerat sed dui. Sed vitae risus scelerisque purus euismod
          ornare. Phasellus ultricies ante vitae molestie adipiscing. </p>
        <div class="clearfix"></div>
        <blockquote>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
        </blockquote>
        <div class="clearfix"></div>
        <p>Sed rutrum ac leo vel aliquet. Fusce vehicula orci vitae dui posuere, ac luctus tortor aliquam. Morbi ac cursus est. Nam arcu risus, tristique fringilla auctor luctus, congue id felis. Donec at semper turpis. Vivamus id tellus quis massa gravida
          viverra a vitae urna. Integer facilisis aliquet velit a egestas. Pellentesque orci dui, rutrum ac nulla eget, laoreet sollicitudin nunc. Aliquam vel mollis turpis. Cras vitae sodales felis. Aliquam semper tincidunt nunc. Nullam tempor ipsum
          purus, at commodo orci volutpat ac. Vivamus scelerisque nunc felis, nec euismod arcu gravida sed. Etiam tempus, purus posuere molestie blandit, tortor felis iaculis nisl, ac rhoncus nisi ipsum a enim. </p>
        <blockquote class="pull-right">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
        </blockquote>
        <div class="clearfix"></div>
        <p>Integer convallis facilisis est, non vehicula ligula tincidunt ac. Curabitur dignissim quam mollis purus rhoncus imperdiet. Aliquam erat volutpat. Duis tempor vestibulum erat, in condimentum eros dignissim at. Maecenas elementum tortor nulla,
          a suscipit mi tincidunt id. Morbi id felis luctus, aliquet neque cursus, aliquam leo. Pellentesque vel justo tincidunt, pulvinar justo id, vulputate tortor. </p>
      </div>
      <!-- end content -->


      <!-- SIDEBAR -->
      <div id="sidebar" class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

        <div class="widget">
          <h4 class="title">
                        <span>Subscribe</span>
                    </h4>
          <form id="subscribe" action="mc.php" name="subscribe" method="post">
            <input type="text" name="name" id="name" class="form-control" placeholder="Name">
            <input type="text" name="email" id="email" class="form-control" placeholder="Email">
            <div class="pull-right">
              <input type="submit" value="Subscribe" id="submit" class="button">
            </div>
          </form>
        </div>

        <div class="widget">
          <h4 class="title">
                    	<span>Recent Posts</span>
                    </h4>
          <div class="tabbable">
            <ul class="nav nav-tabs">
              <li class="active"><a href="left-sidebar.jsp#recent" data-toggle="tab">Recent</a></li>
              <li><a href="left-sidebar.jsp#popular" data-toggle="tab">Popular</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="recent">
                <ul class="recent_posts">
                  <li>
                    <a href="#">
                                    <img src="img/recent_post_01.png" alt="" />Our New Dashboard Is Here
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                  <li>
                    <a href="#">
                                    <img src="img/recent_post_02.png" alt="" />Design Is In The Air
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                </ul>
                <!-- recent posts -->
              </div>
              <div class="tab-pane" id="popular">
                <ul class="recent_posts">
                  <li>
                    <a href="#">
                                    <img src="img/flickr_01.jpg" alt="" />Blog Post With Image
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                  <li>
                    <a href="#">
                                    <img src="img/flickr_02.jpg" alt="" />Another Recent Post with Image
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                </ul>
                <!-- recent posts -->
              </div>
            </div>
          </div>
          <!-- tabbable -->
        </div>
        <!-- end widget -->


        <div class="widget">
          <h4 class="title">
                        <span>Categories</span>
                    </h4>
          <ul class="categories">
            <li><a href="#">Logo Design</a></li>
            <li><a href="l#">Web Design</a></li>
            <li><a href="#">WordPress</a></li>
            <li><a href="#">HTML5 & CSS3</a></li>
            <li><a href="#">Other Works</a></li>
          </ul>
        </div>

        <div class="widget">
          <h4 class="title">
                        <span>Pages</span>
                    </h4>
          <ul class="pages">
            <li><a href="#">Homepage</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Shopping</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div>

        <div class="widget">
          <h4 class="title">
                        <span>Tags</span>
                    </h4>

          <div class="tagcloud">
            <a href="#" class="" title="12 topics">advice</a>
            <a href="#" class="" title="2 topics">wordpress</a>
            <a href="#" class="" title="21 topics">joomla</a>
            <a href="#" class="" title="5 topics">blog</a>
            <a href="#" class="" title="62 topics">cms</a>
            <a href="#" class="" title="12 topics">drupal</a>
            <a href="#" class="" title="88 topics">html5</a>
            <a href="#" class="" title="15 topics">css3</a>
            <a href="#" class="" title="31 topics">orange</a>
            <a href="#" class="" title="16 topics">love to</a>
            <a href="#" class="" title="32 topics">tutorials</a>
            <a href="#" class="" title="12 topics">how to</a>
            <a href="#" class="" title="44 topics">advice</a>
          </div>
        </div>

      </div>
      <!-- end sidebar -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->

  <!-- footer적용 -->
  <jsp:include page="footer.jsp"></jsp:include>
  
  <div class="dmtop">Scroll to Top</div>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>
  <script src="lib/prettyphoto/js/prettyphoto.js"></script>
  <script src="lib/isotope/isotope.min.js"></script>
  <script src="lib/hover/hoverdir.js"></script>
  <script src="lib/hover/hoverex.min.js"></script>
  <script src="lib/unveil-effects/unveil-effects.js"></script>
  <script src="lib/owl-carousel/owl-carousel.js"></script>
  <script src="lib/jetmenu/jetmenu.js"></script>
  <script src="lib/animate-enhanced/animate-enhanced.min.js"></script>
  <script src="lib/jigowatt/jigowatt.js"></script>
  <script src="lib/easypiechart/easypiechart.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
</body>
</html>