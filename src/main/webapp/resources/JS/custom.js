$(document).ready(
		function() {

			$("#search-form").click(function(event) {

				// stop submit the form, we will post it manually.
				event.preventDefault();

				fire_ajax_submit();

			});

			$("#dangnhap").click(function(event) {
				$(this).addClass("actived");
				$("#dangky").removeClass("actived");
				$(".container-login-form").show();
				$(".container-singup-form").hide();

			});
			$("#dangky").click(function(event) {
				$(this).addClass("actived");
				$("#dangnhap").removeClass("actived");
				$(".container-singup-form").show();
				$(".container-login-form").hide();

			});

			$(".btn-giohang").click(
					function(event) {
						event.preventDefault();

					
							var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
							var tenmau = $(this).closest("tr").find(".mau").text();
							var masize = $(this).closest("tr").find(".size").attr("data-masize");
							var tensize = $(this).closest("tr").find(".size").text();
							var soluong = $(this).closest("tr").find(".soluong").text();
							var tensp = $("#tensanpham").text();
							var giatien = $("#giatien").attr("data-value");
							var masp = $("#tensanpham").attr("data-masp");
							


							$.ajax({
								type : "get",
						
								url : "/rinkitori/api/themgiohang",
								
								data : {
									 mamau : mamau,
									 tenmau :tenmau,
									masize :masize,
									 tensize :tensize,
									soluong :soluong,
									 tensp: tensp,
									giatien :giatien,
									 masp : masp
								},
						
								
								success : function(data) {
									if (data == "true") {
										
									}
						
								},
								error : function(e) {
						
									console.log("that bai");
								}
							});

						
					});

});

function fire_ajax_submit() {

	var email = $("#email").val();
	var matkhau = $("#matkhau").val();

	$.ajax({
		type : "GET",

		url : "/rinkitori/api/kiemtradangnhap",
		data : {
			email : email,
			matkhau : matkhau
		},

		cache : false,
		timeout : 600000,
		success : function(data) {
			if (data == "true") {
				$("#ketqua").text(window.location.href);
				duongdanhientai = window.location.href;
				duongdan = duongdanhientai.replace("dangnhap/", "");
				window.location = duongdan;
			} else {
				$("#ketqua").text("đăng nhập thất bại");
			}

		},
		error : function(e) {

			console.log("that bai");
		}
	});

}





