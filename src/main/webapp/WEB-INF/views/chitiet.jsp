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



	<div id="header_chitiet" class="container-fluid "
		style="background-color: black;">
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
						<li class="active"><a id="cot1" href="#">TRANG CHỦ</a></li>
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

						<c:choose>
							<c:when test="${chucaidau !=null }">
								<li><a
									style="width: 32px; height: 32px; border-radius: 30px; background-color: red; text-align: center; font-weight: bold;; ! important; font-size: 30px; margin-top: 5px; padding: 5px;"
									href="#"> ${chucaidau } </a></li>
							</c:when>
							<c:otherwise>
								<li><a href="dangnhap/"><span
										class="glyphicon glyphicon-user"></span>Sign In ${chucaidau }
								</a></li>
							</c:otherwise>
						</c:choose>





						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
								Login</a></li>
					</ul>

				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	</div>


	<div class="container" style="margin-top: 60px;" >
		<div class="row">
			<div class="col-sm-2 col-md-2">
				<h3>Danh Mục Sản Phẩm</h3>
				<ul class="mymenu">
				<c:forEach var="danhmuc" items="${ danhmucsanpham}">
					<li><a href="#" >${danhmuc.getTendanhmuc()}</a></li>
				</c:forEach>
				
					
				</ul>

			</div>

			<div class="col-sm-8 col-md-8">
				<div class="row">

					<div class="col-sm-4 col-md-4">
						<img class="icon" alt="" style="width: 100%; height: 100%"
							src="<c:url value = "/resources/Image/sanpham/${sanPham.getHinhsanpham()}"/> ">
					</div>
					<div class="col-sm-8 col-md-8">
						<h3 id="tensanpham" data-masp="${sanPham.getMasanpham()}">${sanPham.getTensanpham()}</h3>
						<h4 id="giatien" data-value ="${sanPham.getGiatien()} " style="color: red;">${sanPham.getGiatien()}  USD</h4>
						<table class="table">
							<tbody>
								<th>Mầu sản phẩm</th>
								<th>Size</th>
								<th>Số Lượng</th>

								<c:forEach var="chitietsanpham"
									items="${sanPham.getChiTietSanPham() }">


									<tr>
										<td class="mau" data-mamau="${chitietsanpham.getMauSanPHam().getMamau() }" >${chitietsanpham.getMauSanPHam().getTenmau() }</td>
										<td class="size" data-masize="${chitietsanpham.getSizeSanPham().getMasize() }" > ${chitietsanpham.getSizeSanPham().getSize()  }</td>
										<td class="soluong" "${chitietsanpham.getSoluong() }">${chitietsanpham.getSoluong() }</td>
										<td><button type="button" class="btn btn-success btn-giohang">Giỏ Hàng</button></td>
									</tr>


								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>


			</div>
			<div class="col-sm-2 col-md-2">
				<span> Mô tả sản phẩm Chất liệu: Kate Thành phần: 12% modal
					và 88% superfine - Ít nhăn và dễ ủi - Nhanh khô và thoáng mát HDSD:
					- Áo sơ mi màu phơi trong bóng râm để tránh bạc màu phần vai áo -
					Áo sơ mi trắng có thể phơi ngoài nắng để áo trắng sáng hơn ( không
					phơi quá lâu ) </span>

			</div>
		</div>
	</div>


	<div id="footer" class="container-fluid">
		<div class="row">
			<div class="col-sm-4 col-md-4">
				<p>
					<span class="title-footer">THÔNG TIN SHOP</span>
				</p>
				<span>Yame là một thương hiệu thời trang đầy uy tín , luôn
					đảm bảo chất lượng sản phẩm tốt nhất cho khách hàng</span>
			</div>
			<div class="col-sm-4 col-md-4">
				<p>
					<span class="title-footer">LIÊN HỆ</span>
				</p>
				<span>87 văn quán -hà đông - hn</span> <span>tranminhhdvn2015@gmail.com</span>
				<span>0988888888</span>

			</div>
			<div class="col-sm-4 col-md-4">
				<p>
					<span class="title-footer">GÓP Ý</span>
				</p>
				<form action="" method="post">
					<input name="tenNhanVien" type="text" placeholder="Email"
						style="margin-bottom: 8px;" />
					<textarea name="tuoi" rows="5" cols="50" placeholder="Nội Dung"></textarea>
					<br>
					<button style="background-color: aqua;">Dồng ý</button>
				</form>

			</div>
		</div>



	</div>



	<jsp:include page="footer.jsp" />
</body>

</html>