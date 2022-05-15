<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="vo.Customer"%>
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
<%
	Customer customer = (Customer)request.getAttribute("customer");
%>
  <!-- header적용. -->
  <jsp:include page="header.jsp"></jsp:include>

  <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.jsp">Home</a></li>
          <li>Update Member Pw</li>
        </ul>
        <h2>Update Member Pw</h2>
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
        <div class="col-lg-12 col-md-12 col-sm-12">
          <h4 class="title">
                       <span>Update Member Pw</span>
          </h4>
          	<form method="post" action="<%=request.getContextPath()%>/UpdateMemberPwController">
		<div>
			<!-- 값넘기기 -->
			<input type="hidden" name="customerId" readonly="readonly" value="<%=customer.getCustomerId()%>">
			<input type="hidden" name="name" value="<%=customer.getName()%>" required>
			<input type="hidden" name="nickName" value="<%=customer.getNickName()%>" required>
			<input type="hidden" name="email" value="<%=customer.getEmail()%>" required>
			<input type="hidden" name="phone" value="<%=customer.getPhone()%>" required>
			<input type="hidden" name="addressId" value="<%=customer.getAddressId()%>" required>
			<input type="hidden" name="detailAddress" value="<%=customer.getDetailAddress()%>" required>
		</div>
		<div>
			<table class="table">
				<td>현재 비밀번호 입력</td>
					<td>
						<input type="password" name="customerPw" required>
					</td>
				</tr>
				<tr>
					<td>새 비밀번호 입력</td>
					<td>
						<input type = "password" name ="newCustomerPw1" value="" required>
					</td>
				</tr>
				<tr>
					<td>새 비밀번호 확인</td>
					<td>
						<input type = "password" name ="newCustomerPw2"  value="" required>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" class="btn btn-outline-info btn-sm">비밀번호 수정</button>
					</td>
				</tr>
			</table>
		</div>
	</form>
		<a  href="<%=request.getContextPath()%>/SelectMemberOneController" type ="button" class="btn btn-outline-info btn-sm">이전</a>
		<a  href="<%=request.getContextPath()%>/IndexController" type="button" class="btn btn-outline-info btn-sm">index</a>
        </div>
      </div>
      <!-- end content -->
    </div>
    <!-- end container! -->
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