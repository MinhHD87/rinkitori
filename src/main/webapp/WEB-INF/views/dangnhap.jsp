<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<jsp:include page="header.jsp" />
<title>Đăng nhập</title>
</head>

<body id="body-login">

	<div id="body-flex-login">
		<div id="container-login">
		<div id="container-login-left">
		<div class="header-login" id="header-left">
		<span id="text-logo">Wel com</span><br>
		<span id="hint-text-logo">Hãy tạo nên phong cách của bạn cùng Minishop !</span>
		</div>
		<div id="header-bottom-left">
		<p><img  width="20" height="20" alt="icon_oval" src="<c:url value="/resources/Image/icon_oval.png"/>"/><span>Luôn cập nhật xu hướng thời trang mới nhất</span></p>
		<p><img width="20" height="20" alt="icon_oval" src="<c:url value="/resources/Image/icon_oval.png"/>"/><span>Giảm hơn 50% tất cả các mặt hàng giành cho khách VIP</span></p>
		<p><img  width="20" height="20" alt="icon_oval" src="<c:url value="/resources/Image/icon_oval.png"/>"/><span>Tận tình tư vấn đẻ tạo nên phong cách của bạn</span></p>
		</div>
		</div>
		<div id="container-login-right">
		<div id="header-top-right" class="header-login">
		<span class="actived" id="dangnhap">Đăng nhập</span> / <span id="dangky">Đăng ký</span>
		</div>
		<div id="container-center-login-right">
			<div class="container-login-form" id="container-center-login-right">
				<div class="form-group">
				    <label for="exampleInputEmail1">Email address</label>
				    <input  id="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  	</div>
			 	 <div class="form-group">
				    <label for="exampleInputPassword1">Password</label>
				    <input id="matkhau" type="password" class="form-control" id="exampleInputPassword1">
			  	</div>
		  
			  		<button id="search-form" type="button" class="btn btn-primary">Đăng nhập</button>
			</div>
		  <div class="container-singup-form" id="container-center-login-right">
		    <form method="post"> 
				<div class="form-group">
				    <label for="exampleInputEmail1">Email address</label>
				    <input name="email" id="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
				    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  	</div>
			 	 <div class="form-group">
				    <label for="exampleInputPassword1">Password</label>
				    <input name="matkhau" id="matkhau" type="password" class="form-control" id="exampleInputPassword1">
			  	</div>
		  		 <div class="form-group">
				    <label for="exampleInputPassword2">nhập lại Password</label>
				    <input name="nhaplaimatkhau" id="nhaplaimatkhau" type="password" class="form-control" id="exampleInputPassword2">
			  	</div>
			  		<button type="submit" class="btn btn-primary">Đăng ký</button>
			  </form> 
			</div>
		
		<div class="form-group form-check">
    		<span id="ketqua"/>
    	<span >${kiemtradangnhap }</span>
    		
 		 </div>
		</div>
		
		<div id="container-social-login">
		<img  width="35" height="35" alt="icon_oval" src="<c:url value="/resources/Image/icon_fb.png"/>"/>
		<img  width="35" height="35" alt="icon_oval" src="<c:url value="/resources/Image/icon_google.jpg"/>"/>
		</div>
		 </div>
		</div>
	</div>
</body>
<jsp:include page="footer.jsp" />
</html>