<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>RedVelvet</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/img/favicon.png" rel="icon">
<link href="${pageContext.request.contextPath}/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/hover/hoverex-all.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/jetmenu/jetmenu.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/owl-carousel/owl-carousel.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/colors/blue.css">

<!-- =======================================================
    Template Name: MaxiBiz
    Template URL: https://templatemag.com/maxibiz-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
<style type="text/css">
#productMenu {
	margin: 0;
	padding: 0;
}

#productMenu li {
	float: left;
	list-style: none;
	margin: 1px;
}

#productMenu li a {
	display: block;
	width: 135px;
	height: 40px;
	border: 1px #3498DB solid;
	color: #3498DB;
	text-align: center;
	padding-top: 10px;
	text-decoration: none;
}

#productMenu li a span {
	display: block;
}

#productMenu li a:hover {
	background: #3498DB;
	color: #FFFFFF;
	text-decoration: none;
}
</style>
</head>
<body>
	<!-- header적용 -->
	<c:choose>
		<c:when test="${sessionAdminId != null }">
			<jsp:include page="/WEB-INF/view/banner/adminHeader.jsp"></jsp:include>
		</c:when>
		<c:otherwise>
			<jsp:include page="/WEB-INF/view/banner/header.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>
	<section class="post-wrapper-top">
		<div class="container">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<ul class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/IndexController">Home</a></li>
					<li>Product</li>
				</ul>
				<h2>Product</h2>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"></div>
		</div>
	</section>
	<!-- end post-wrapper-top -->

	<section class="section1">
		<div class="container clearfix">
			<div class=" col-lg-12 col-md-12 col-sm-12 clearfix">
				<div class="divider"></div>
				<div id="productMenu" style="">
					<ul>
						<li><a href="${pageContext.request.contextPath}/CpuListController">CPU</a></li>
						<li><a href="${pageContext.request.contextPath}/MainboardListController">MAINBOARD</a></li>
						<li><a href="${pageContext.request.contextPath}/RamListController">RAM</a></li>
						<li><a href="${pageContext.request.contextPath}/GpuListController">GPU</a></li>
						<li><a href="${pageContext.request.contextPath}/StorageListController">STORAGE</a></li>
						<li><a href="${pageContext.request.contextPath}/CaseListController">CASE</a></li>
						<li><a href="${pageContext.request.contextPath}/PowerListController">POWER</a></li>
						<li><a href="${pageContext.request.contextPath}/CoolerListController">COOLER</a></li>
					</ul>
					<br>
					<br>
					<br>
				</div>
				<!-- 후에 일정 개수마다 줄바꿈 적용시키기 -->
				<!-- GPU 상세검색 체크박스 테이블 -->
				<h4>GPU DETAIL SEARCH</h4>
				<form>
					<table class="table table-bordered">
						<tr>
							<th style="width: 20%" class="bg-info text-light text-center">COMPANY</th>
							<td><c:forEach var="c" items="${companyList}">
									<input type="checkbox" name="companyName" value="${c}">
									<span>&nbsp;${c}&nbsp;</span>
								</c:forEach></td>
						</tr>
						<tr>
							<th class="bg-info text-center">CHIPSET COMPANY</th>
							<td><c:forEach var="c" items="${chipsetCompanyList}">
									<input type="checkbox" name="chipsetCompany" value="${c}">
									<span>&nbsp;${c}&nbsp;</span>
								</c:forEach></td>
						</tr>
						<tr>
							<th class="bg-info text-center">GPU SIZE</th>
							<td><c:forEach var="c" items="${gpuSizeList}">
									<input type="checkbox" name="gpuSize" value="${c}">
									<span>&nbsp;${c}&nbsp;</span>
								</c:forEach></td>
						</tr>
					</table>
					<div>
						<button type="submit" style="float: right; margin-rigth: 20px">Search</button>
						<button type="reset" class="btn btn-link"
							style="float: right; margin-rigth: 20px">Reset</button>
					</div>
				</form>
				<br>
				<h4 class="title">GPU</h4>
				<!-- 상품 리스트 -->
				<div class="portfolio-centered">
					<div class="recentitems portfolio">
						<div class="recentitems portfolio isotope"
							style="position: relative; overflow: hidden; height: 764px;">
							<c:forEach var="c" items="${gpuList}">
								<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 web-design graphic-design">
									<div class="he-wrap tpl6 market-item">
										<img src="${pageContext.request.contextPath}/image/${c.gpuImageName}" alt="">
										<div class="he-view">
											<div class="bg a0" data-animate="fadeIn">
												<h3 class="big a1" data-animate="fadeInDown"></h3>
												<a href="${pageContext.request.contextPath}/UpdateGpuController?" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-plus">Update</i></a>
												<a href="${pageContext.request.contextPath}/DeleteGpuController?" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-minus">Delete</i></a>
												<a href="${pageContext.request.contextPath}/CartAddGpuController?gpuNo=${c.gpuNo}" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-search">Detail</i></a>
												<div class="portfolio_category text-center a2" data-animate="fadeIn"></div>
												<!-- portfolio_category -->
											</div>
											<!-- he bg -->
										</div>
										<!-- he view -->
									</div>
									<!-- he wrap -->
									<h3 class="title">${c.gpuName}</h3>
									<p>
										<span class="text-info">price</span>&nbsp; ${c.price}
									</p>
								</div>
							</c:forEach>
							<!-- end col-4 -->
						</div>
					</div>
					<!--  container -->
					<div class="divider"></div>
				</div>
				<!-- end container -->
			</div>
		</div>
	</section>
	<!-- end section -->
	<!-- footer적용 -->
	<jsp:include page="/WEB-INF/view/banner/footer.jsp"></jsp:include>

	<div class="dmtop">Scroll to Top</div>

	<!-- JavaScript Libraries -->
	<script src="${pageContext.request.contextPath}/lib/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/php-mail-form/validate.js"></script>
	<script src="${pageContext.request.contextPath}/lib/prettyphoto/js/prettyphoto.js"></script>
	<script src="${pageContext.request.contextPath}/lib/isotope/isotope.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/hover/hoverdir.js"></script>
	<script src="${pageContext.request.contextPath}/lib/hover/hoverex.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/unveil-effects/unveil-effects.js"></script>
	<script src="${pageContext.request.contextPath}/lib/owl-carousel/owl-carousel.js"></script>
	<script src="${pageContext.request.contextPath}/lib/jetmenu/jetmenu.js"></script>
	<script src="${pageContext.request.contextPath}/lib/animate-enhanced/animate-enhanced.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/jigowatt/jigowatt.js"></script>
	<script src="${pageContext.request.contextPath}/lib/easypiechart/easypiechart.min.js"></script>

	<!-- Template Main Javascript File -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>