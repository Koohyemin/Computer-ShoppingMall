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
<link href="${pageContext.request.contextPath}/img/apple-touch-icon.png" rel="icon">
<link href="${pageContext.request.contextPath}/img/apple-touch-icon.png" rel="icon">

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
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	// company 직접입력 
	$(function(){
		$("#selboxDirect").hide();
		
		$("#selbox").change(function() {
	             // 직접입력을 누를 때 나타남
			if($("#selbox").val() == "direct") {
				$("#selboxDirect").show();
			}  else {
				$("#selboxDirect").hide();
			}
		}) 
	});
	
	// chipset company 직접입력
	$(function(){
		$("#selboxDirect2").hide();
		
		$("#selbox2").change(function() {
	             // 직접입력을 누를 때 나타남
			if($("#selbox2").val() == "direct") {
				$("#selboxDirect2").show();
			}  else {
				$("#selboxDirect2").hide();
			}
		}) 
	});
	
	// gpuSize 직접입력~
	$(function(){
		$("#selboxDirect3").hide();
		
		$("#selbox3").change(function() {
	             //직접입력을 누를 때 나타남
			if($("#selbox3").val() == "direct") {
				$("#selboxDirect3").show();
			}  else {
				$("#selboxDirect3").hide();
			}
		}) 
	});
</script>
</head>
<body>
	<!-- header적용 -->
	<jsp:include page="/WEB-INF/view/banner/adminHeader.jsp"></jsp:include>

	<section class="post-wrapper-top">
		<div class="container">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<ul class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/IndexController">Home</a></li>
				</ul>
				<h2>상품 수정</h2>
			</div>
		</div>
	</section>
	<!-- end post-wrapper-top -->
	<section class="section1">
		<div class="container clearfix">
			<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
				<div class="col-lg-3 col-md-6 col-sm-12"></div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<h4 class="title text-primary">GPU 수정
					<c:if test="${msg != null || msg != ''}">
						<span class="text-danger">${msg}</span>
					</c:if>
					</h4>
					<form id="updateGpuForm" method="post" name=updateGpuForm” action="${pageContext.request.contextPath}/UpdateGpuController?">
						<div>
							<!-- 값넘기기 -->
							<input type="hidden" name="gpuImageNo" readonly="readonly" value="${requestScope.gpu.gpuImageNo}" required>
							<input type="hidden" name="gpuNo" readonly="readonly" value="${requestScope.gpu.gpuNo}" required>
						</div>
						<table class="table text-primary">
							<tr>
								<th>CATEGORY</th>
								<td>
									<input type="text"  name="categoryName" value="${requestScope.gpu.categoryName}" readonly="readonly" class="form-control">
								</td>
							</tr>
							<tr>
								<th>NAME</th>
								<td>
									<input type="text" name="gpuName" value="${requestScope.gpu.gpuName}" class="form-control">
								</td>
							</tr>
							<tr>
								<th>COMPANY</th>
								<td>
									<select class="form-control" id="selbox" name="companyName">
										<option value="" selected disabled>${requestScope.gpu.companyName}</option>
											<c:forEach var="c" items="${companyList}">
												<option value="${c}">${c}</option>
											</c:forEach>
										<option value="direct">직접 입력</option>
									</select>
									<input type="text" id="selboxDirect" name="companyNameInsert" class="form-control" value="" placeholder="Company 직접 입력">
								</td>
							</tr>
							<tr>
								<th>CHIPSET COMPANY</th>
								<td>
									<select class="form-control" id="selbox2" name="chipsetCompany" >
										<option value="" selected disabled>${requestScope.gpu.chipsetCompany}</option>
											<c:forEach var="c" items="${chipsetCompanyList}">
												<option value="${c}">${c}</option>
											</c:forEach>
										<option value="direct">직접 입력</option>
									</select>
									<input type="text" id="selboxDirect2"  name="chipsetCompanyInsert" class="form-control" value="" placeholder="company 직접 입력">
								</td>
							</tr>
							<tr>
								<th>GPU SIZE</th>
								<td>
									<select class="form-control" id="selbox3" name="gpuSize" >
										<option value="" selected disabled>${requestScope.gpu.gpuSize}</option>
											<c:forEach var="c" items="${gpuSizeList}">
												<option value="${c}">${c}</option>
											</c:forEach>
										<option value="direct">직접 입력</option>
									</select>
									<input type="number" min="1" id="selboxDirect3"  name="gpuSizeInsert" class="form-control" value="" placeholder="company 직접 입력">
								</td>
							</tr>							
							<tr>
								<th>QUANTITY</th>
								<td>
									<input type="number" name="quantity"  value="${requestScope.gpu.quantity}" min="1" class="form-control">
								</td>
							</tr>
							<tr>
								<th>PRICE</th>
								<td>
									<input type="number" name="price"  value="${requestScope.gpu.price}" min="1" class="form-control" >
								</td>
							</tr>
							<tr>
								<th>MEMO</th>
								<td>
									<textarea class="form-control" cols="30" rows="5" name="memo"></textarea>
								</td>
							</tr>
						</table>
							<button type="submit" style="float:right">등록</button>
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
	<jsp:include page="/WEB-INF/view/banner/footer.jsp"></jsp:include>

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