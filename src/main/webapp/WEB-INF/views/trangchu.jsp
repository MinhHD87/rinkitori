<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<div id="header" class="container-fluid ">
		<nav class="navbar navbar-default none_nav">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<span id="rinkitori"><a class="navbar-brand" href="#">Rinkitori</a></span>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse "
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-center ">
						<li  class="active"><a id="cot1" href="#">TRANG CHỦ</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Dropdown <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
						<li><a href="#">DỊCH VỤ</a></li>
						<li><a href="#">LIÊN HỆ</a></li>

					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span
								class="glyphicon glyphicon-shopping-cart"></span>GIỎ HÀNG</a></li>
								<li><a href="dangnhap/"><span class="glyphicon glyphicon-user"></span>
								Sign In</a></li>
						<li><a href=""><span class="glyphicon glyphicon-user"></span>
								Sign Up</a></li>
						
						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
								Login</a></li>
					</ul>

				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>




		<div class="event_header container wow bounceIn" >
			<span>ngay 17/10 - 23/10/2020</span><br> <span
				style="font-size: 50px;">Mua 1 Tặng 1</span><br>
			<button>XEM NGAY</button>
			<span></span>
		</div>

	</div>


	<div id="info" class="container">
		<div class="row" ">

			<div class="col-12 col-sm-4 col-lg-4 wow fadeInLeft">
				<img class="icon" alt="" width="48"
					src="<c:url value = "/resources/Image/iconchatluong300x300-5293.png"/> "><br>
				<span style="font-size: 32px; font-weight: 600;"> CHẤT LƯỢNG</span><br>
				<span>Chúng tôi cam kết sẽ mang đến cho các bạn chất lượng
					sản phẩm tốt nhất</span>
			</div>

			<div class="col-12  col-sm-4   col-lg-4 wow fadeInDown">
				<img class="icon" alt="" width="48"
					src="<c:url value = "/resources/Image/iconchatluong300x300-5293.png"/> "><br>
				<span style="font-size: 32px; font-weight: 600;">CHẤT LƯỢNG</span><br>
				<span>Chúng tôi cam kết sẽ mang đến cho các bạn chất lượng
					sản phẩm tốt nhất</span>
			</div>
			<div class="col-12  col-sm-4  col-lg-4 wow fadeInUp">
				<img class="icon" alt="" width="48"
					src="<c:url value = "/resources/Image/iconchatluong300x300-5293.png"/> "><br>
				<span style="font-size: 32px; font-weight: 600;">CHẤT LƯỢNG</span><br>
				<span>Chúng tôi cam kết sẽ mang đến cho các bạn chất lượng
					sản phẩm tốt nhất</span>
			</div>
		</div>
	</div>
	<div id="title-sanpham" class="container">
		<span>SẢN PHẨM HOT</span>
		<div class="row" style="magin-top: 46px;">
			<div class="col-md-3  col-sm-6">
				<div class="sanpham">
					<img alt="" src="<c:url value = "/resources/Image/sanpham1.jpg"/> "><br>
					<span>ao fong</span><br>
				<span class="gia">155.000 VND</span><br>
				</div>


			</div>
			<div class="col-md-3  col-sm-6">
				<div class="sanpham">
					<img alt="" src="<c:url value = "/resources/Image/sanpham1.jpg"/> "><br>
						<span>ao so mi</span><br>
					<span class="gia">155.000 VND</span><br>
				</div>


			</div>
			<div class="col-md-3  col-sm-6">
				<div class="sanpham">
					<img alt="" src="<c:url value = "/resources/Image/sanpham1.jpg"/> "><br>
							<span>ao so mi</span>		<br>
							<span class="gia">155.000 VND</span><br>
				</div>


			</div>
			<div class="col-md-3  col-sm-6">
				<div class="sanpham">
					<img alt="" src="<c:url value = "/resources/Image/sanpham1.jpg"/> "><br>
							<span>ao so mi</span><br>
						<span class="gia">155.000 VND</span><br>
				</div>


			</div>
			<div class="col-md-3  col-sm-6">
				<div class="sanpham">
					<img alt="" src="<c:url value = "/resources/Image/sanpham1.jpg"/> "><br>
							<span>ao so mi</span><br>
						<span class="gia">155.000 VND</span><br>
				</div>


			</div>
			<div class="col-md-3  col-sm-6">
				<div class="sanpham">
					<img alt="" src="<c:url value = "/resources/Image/sanpham1.jpg"/> "><br>
							<span>ao so mi</span><br>
						<span class="gia">155.000 VND</span><br>
				</div>


			</div>
			<div class="col-md-3  col-sm-6">
				<div class="sanpham">
					<img alt="" src="<c:url value = "/resources/Image/sanpham1.jpg"/> "><br>
							<span>ao so mi</span><br>
						<span class="gia">155.000 VND</span><br>
				</div>


			</div>
			<div class="col-md-3  col-sm-6">
				<div class="sanpham">
					<img alt="" src="<c:url value = "/resources/Image/sanpham1.jpg"/> "><br>
							<span>ao so mi</span><br>
						<span class="gia">155.000 VND</span><br>
				</div>


			</div>
			<div class="col-md-3  col-sm-6">
				<div class="sanpham">
					<img alt="" src="<c:url value = "/resources/Image/sanpham1.jpg"/> "><br>
							<span>ao so mi</span><br>
						<span class="gia">155.000 VND</span><br>
				</div>


			</div>
			<div class="col-md-3  col-sm-6">
				<div class="sanpham">
					<img alt="" src="<c:url value = "/resources/Image/sanpham1.jpg"/> "><br>
							<span>ao so mi</span><br>
						<span class="gia">155.000 VND</span><br>
				</div>


			</div>
		</div>
	</div>
	<div id="footer" class="container-fluid">
	<div class="row">
	<div class="col-sm-4 col-md-4">
	<p><span class="title-footer">THÔNG TIN SHOP</span></p>
	<span>Yame là một thương hiệu thời trang đầy uy tín , luôn đảm bảo chất lượng sản phẩm tốt nhất cho khách hàng</span>
	</div>
	<div class="col-sm-4 col-md-4">
		<p><span class="title-footer">LIÊN HỆ</span></p>
		<span>87 văn quán -hà đông - hn</span>
			<span>tranminhhdvn2015@gmail.com</span>
			<span>0988888888</span>
			
	</div>
	<div class="col-sm-4 col-md-4">
		<p><span class="title-footer">GÓP Ý</span></p>
		<form action="" method="post">
		<input name="tenNhanVien" type="text" placeholder="Email" style="margin-bottom: 8px;" />
		<textarea name ="tuoi"rows="5" cols="50" placeholder="Nội Dung"></textarea><br>
		<button style="background-color: aqua;">Dồng ý</button>
		</form>
		
	</div>
	</div>
	
	
	
	</div>



	<jsp:include page="footer.jsp" />
</body>

</html>