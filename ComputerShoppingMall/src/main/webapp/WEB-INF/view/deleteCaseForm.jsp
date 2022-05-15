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
        </ul>
        <h2>상품삭제</h2>
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
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
        <div class="col-lg-3 col-md-6 col-sm-12">
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12">
          <h4 class="title">
                       <span>CASE</span>
                    </h4>
         <form id="UpdateCaseform" method="post" name="updatetCaseform" action="<%=request.getContextPath()%>/UpdeteCaseController">
             <div class="form-group">
              <input type="number" readonly name="caseNo" class="form-control" placeholder="CaseNo">
            </div>
             <div class="form-group">
              <input type="text" readonly name="caseName" class="form-control" placeholder="CaseName">
            </div>
            <div class="form-group">
              <select class="readonly" name="caseSize" onFocus="this.initialSelect = this.selectedIndex;" onChange="this.selectedIndex = this.initialSelect;">
              		<option value="" selected disabled hidden>caseSize</option>
					<option value="빅타워">빅타워</option>
					<option value="미들타워">미들타워</option>
					<option value="미니타워">미니타워</option>
					<option value="미니ITX">미니ITX</option>
				</select>
            </div>
            <div class="form-group">
              <input type="text" name="caseSize" readonly class="form-control" placeholder="caseSize">
            </div>
            <div class="form-group">
              <select class="readonly" name="bay89mm" onFocus="this.initialSelect = this.selectedIndex;" onChange="this.selectedIndex = this.initialSelect;">
					<option value="" selected disabled hidden>bay89mm</option>
					<option value="6">6</option>
					<option value="4">4</option>
					<option value="3">3</option>
					<option value="2">2</option>
					<option value="1">1</option>
					<option value="0">0</option>
				</select>
            </div>
            <div class="form-group">
              <select class="readonly" name="bay64mm" onFocus="this.initialSelect = this.selectedIndex;" onChange="this.selectedIndex = this.initialSelect;">
					<option value="" selected disabled hidden>bay64mm</option>
					<option value="6">6</option>
					<option value="4">4</option>
					<option value="2">2</option>
					<option value="1">1</option>
				</select>
            </div>
            <div class="form-group">
              <input type="file" name="caseImage" class="form-control" placeholder="Img">
            </div>
            <div class="form-group">
              <input type="number" readonly name="quantity" class="form-control" placeholder="Quantity">
            </div>
            <div class="form-group">
              <input type="number" readonly name="price" class="form-control" placeholder="Price">
            </div>
            <div class="form-group">
              <input type="text" readonly name="memo" class="form-control" placeholder="Memo">
            </div>
            <div class="form-group">
              <input type="submit" class="button" value="삭제">
            </div>
          </form>
        </div>
        <!-- end login -->
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->

  <!-- footer적용 -->
  <jsp:include page="footer.jsp"></jsp:include>

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