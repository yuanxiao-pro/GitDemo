<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zentimo - Pay</title>

<meta charset="UTF-8">
<meta http-equiv="X-UA-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://cdn.bootstrapmb.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/chosen.min.css">
<link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="assets/css/magnific-popup.min.css">
<link rel="stylesheet" href="assets/css/lightbox.min.css">
<link rel="stylesheet"
	href="assets/js/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet" href="assets/css/mobile-menu.css">
<link rel="stylesheet" href="assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet" href="assets/css/style.css">

</head>
<body class="inblog-page">
	<header class="header style7">
		<div class="top-bar">
			<div class="container">
				<div class="top-bar-left">
					<div class="header-message">
					<c:choose>
							<c:when test="${sessionScope.username != null}">
								<a href="#">欢迎[${sessionScope.username}]登录</a>
							</c:when>
							<c:otherwise>
								<a href="login.html">请登录</a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="top-bar-right">
					<div class="header-language">
						<div class="zentimo-language zentimo-dropdown">
							<a href="#" class="active language-toggle"
								data-zentimo="zentimo-dropdown"> <span> English (USD)
							</span>
							</a>

						</div>
					</div>
					<ul class="header-user-links">
						<li><a href="login.html">Login or Register</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="main-header">
				<div class="row">
					<div
						class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
						<div class="logo">
							<a href="index.jsp"> <img src="assets/images/logo.png"
								alt="img">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
						<div class="block-search-block">
							<form class="form-search form-search-width-category">
								<div class="form-content">
									<div class="category">
										<select title="cate" data-placeholder="All Categories"
											class="chosen-select" tabindex="1">
											<option value="United States">Accessories</option>
											<option value="United Kingdom">TV & Video</option>
											<option value="Afghanistan">Tables</option>
											<option value="Aland Islands">Sofas</option>
											<option value="Albania">New Arrivals</option>
											<option value="Algeria">Storage</option>
										</select>
									</div>
									<div class="inner">
										<input type="text" class="input" name="s" value=""
											placeholder="Search here">
									</div>
									<button class="btn-search" type="submit">
										<span class="icon-search"></span>
									</button>
								</div>
							</form>
						</div>
					</div>
					<div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
						<div class="header-control">
							<div
								class="block-minicart zentimo-mini-cart block-header zentimo-dropdown">
								<a href="javascript:void(0);" class="shopcart-icon"
									data-zentimo="zentimo-dropdown"> Cart <span class="count">
										0 </span>
								</a>
								<div class="no-product zentimo-submenu">
									<p class="text">
										You have <span> 0 item(s) </span> in your bag
									</p>
								</div>
							</div>
							<div class="block-account block-header zentimo-dropdown">
								<a href="javascript:void(0);" data-zentimo="zentimo-dropdown">
									<i class="fa fa-user-o" aria-hidden="true"></i>
								</a>
								<div class="header-account zentimo-submenu">
									<div class="header-user-form-tabs">
										<ul class="tab-link">
											<li class="active"><a data-toggle="tab"
												aria-expanded="true" href="#header-tab-login">Login</a></li>
											<li><a data-toggle="tab" aria-expanded="true"
												href="#header-tab-rigister">Register</a></li>
										</ul>
										<div class="tab-container">
											<div id="header-tab-login" class="tab-panel active">
												<form method="post" class="login form-login">
													<p class="form-row form-row-wide">
														<input type="email" placeholder="Email" class="input-text">
													</p>
													<p class="form-row form-row-wide">
														<input type="password" class="input-text"
															placeholder="Password">
													</p>
													<p class="form-row">
														<label class="form-checkbox"> <input
															type="checkbox" class="input-checkbox"> <span>
																Remember me </span>
														</label> <input type="submit" class="button" value="Login">
													</p>
													<p class="lost_password">
														<a href="#">Lost your password?</a>
													</p>
												</form>
											</div>
											<div id="header-tab-rigister" class="tab-panel">
												<form method="post" class="register form-register">
													<p class="form-row form-row-wide">
														<input type="email" placeholder="Email" class="input-text">
													</p>
													<p class="form-row form-row-wide">
														<input type="password" class="input-text"
															placeholder="Password">
													</p>
													<p class="form-row">
														<input type="submit" class="button" value="Register">
													</p>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<a class="menu-bar mobile-navigation menu-toggle" href="#"> <span></span>
								<span></span> <span></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="header-nav-container">
			<div class="container">
				<div class="header-nav-wapper main-menu-wapper">
					<div class="vertical-wapper block-nav-categori">
						<div class="block-title">
							<span class="icon-bar"> <span></span> <span></span> <span></span>
							</span> <span class="text">All Departments</span>
						</div>
						<div class="block-content verticalmenu-content">
							<ul
								class="zentimo-nav-vertical vertical-menu zentimo-clone-mobile-menu">
								<li class="menu-item"><a href="#"
									class="zentimo-menu-item-title" title="New Arrivals">New
										Arrivals</a></li>
								<li class="menu-item"><a title="Hot Sale" href="#"
									class="zentimo-menu-item-title">Hot Sale</a></li>
								<li class="menu-item menu-item-has-children"><a
									title="Accessories" href="#" class="zentimo-menu-item-title">Accessories</a>
									<span class="toggle-submenu"></span>
									<ul role="menu" class=" submenu">
										<li class="menu-item"><a title="Clock" href="#"
											class="zentimo-item-title">Clock</a></li>
										<li class="menu-item"><a title="TV & Video" href="#"
											class="zentimo-item-title">TV & Video</a></li>
										<li class="menu-item"><a title="New Arrivals" href="#"
											class="zentimo-item-title">New Arrivals</a></li>
										<li class="menu-item"><a title="Accessories" href="#"
											class="zentimo-item-title">Accessories</a></li>
										<li class="menu-item"><a title="Storage" href="#"
											class="zentimo-item-title">Storage</a></li>
									</ul></li>
								<li class="menu-item"><a title="TV & Video" href="#"
									class="zentimo-menu-item-title">TV & Video</a></li>
								<li class="menu-item"><a title="Headphones" href="#"
									class="zentimo-menu-item-title">Headphones</a></li>
								<li class="menu-item"><a title="Electronics" href="#"
									class="zentimo-menu-item-title">Electronics</a></li>
								<li class="menu-item"><a title="Cell Phones" href="#"
									class="zentimo-menu-item-title">Cell Phones</a></li>
								<li class="menu-item"><a title="Camera" href="#"
									class="zentimo-menu-item-title">Camera</a></li>
							</ul>
						</div>
					</div>
					<div class="header-nav">
						<div class="container-wapper">
							<ul class="zentimo-clone-mobile-menu zentimo-nav main-menu "
								id="menu-main-menu">
								<li class="menu-item  menu-item-has-children"><a
									href="index.html" class="zentimo-menu-item-title" title="Home">Home</a>
									<span class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item"><a href="index.html">Home 01</a></li>
										<li class="menu-item"><a href="home2.html">Home 02</a></li>
										<li class="menu-item"><a href="home3.html">Home 03</a></li>
									</ul></li>
								<li class="menu-item menu-item-has-children"><a
									href="gridproducts.html" class="zentimo-menu-item-title"
									title="Shop">Shop</a> <span class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item"><a href="gridproducts.html">Grid
												Fullwidth</a></li>
										<li class="menu-item"><a
											href="gridproducts_leftsidebar.html">Grid Left sidebar</a></li>
										<li class="menu-item"><a
											href="gridproducts_bannerslider.html">Grid Bannerslider</a></li>
										<li class="menu-item"><a href="listproducts.html">List</a>
										</li>
									</ul></li>
								<li class="menu-item  menu-item-has-children item-megamenu">
									<a href="#" class="zentimo-menu-item-title" title="Pages">Pages</a>
									<span class="toggle-submenu"></span>
									<div class="submenu mega-menu menu-page">
										<div class="row">
											<div
												class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
												<div class="zentimo-custommenu default">
													<h2 class="widgettitle">Shop Pages</h2>
													<ul class="menu">
														<li class="menu-item"><a href="shoppingcart.html">Shopping
																Cart</a></li>
														<li class="menu-item"><a href="checkout.html">Checkout</a>
														</li>
														<li class="menu-item"><a href="contact.html">Contact
																us</a></li>
														<li class="menu-item"><a href="404page.html">404</a>
														</li>
														<li class="menu-item"><a href="login.html">Login/Register</a>
														</li>
													</ul>
												</div>
											</div>
											<div
												class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
												<div class="zentimo-custommenu default">
													<h2 class="widgettitle">Product</h2>
													<ul class="menu">
														<li class="menu-item"><a
															href="productdetails-fullwidth.html">Product
																Fullwidth</a></li>
														<li class="menu-item"><a
															href="productdetails-leftsidebar.html">Product left
																sidebar</a></li>
														<li class="menu-item"><a
															href="productdetails-rightsidebar.html">Product right
																sidebar</a></li>
													</ul>
												</div>
											</div>
											<div
												class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
											</div>
											<div
												class="col-xs-12 col-sm-12 col-md-12 col-lg-3 menu-page-item">
											</div>
										</div>
									</div>
								</li>
								<li class="menu-item  menu-item-has-children"><a
									href="inblog_right-siderbar.html"
									class="zentimo-menu-item-title" title="Blogs">Blogs</a> <span
									class="toggle-submenu"></span>
									<ul class="submenu">
										<li class="menu-item menu-item-has-children"><a href="#"
											class="zentimo-menu-item-title" title="Blog Style">Blog
												Style</a> <span class="toggle-submenu"></span>
											<ul class="submenu">
												<li class="menu-item"><a href="bloggrid.html">Grid</a>
												</li>
												<li class="menu-item"><a href="bloglist.html">List</a>
												</li>
												<li class="menu-item"><a
													href="bloglist-leftsidebar.html">List Sidebar</a></li>
											</ul></li>
										<li class="menu-item menu-item-has-children"><a href="#"
											class="zentimo-menu-item-title" title="Post Layout">Post
												Layout</a> <span class="toggle-submenu"></span>
											<ul class="submenu">
												<li class="menu-item"><a
													href="inblog_left-siderbar.html">Left Sidebar</a></li>
												<li class="menu-item"><a
													href="inblog_right-siderbar.html">Right Sidebar</a></li>
											</ul></li>
									</ul></li>
								<li class="menu-item"><a href="about.html"
									class="zentimo-menu-item-title" title="About">About</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="header-device-mobile">
		<div class="wapper">
			<div class="item mobile-logo">
				<div class="logo">
					<a href="#"> <img src="assets/images/logo.png" alt="img">
					</a>
				</div>
			</div>
			<div class="item item mobile-search-box has-sub">
				<a href="#"> <span class="icon"> <i class="fa fa-search"
						aria-hidden="true"></i>
				</span>
				</a>
				<div class="block-sub">
					<a href="#" class="close"> <i class="fa fa-times"
						aria-hidden="true"></i>
					</a>
					<div class="header-searchform-box">
						<form class="header-searchform">
							<div class="searchform-wrap">
								<input type="text" class="search-input"
									placeholder="Enter keywords to search..."> <input
									type="submit" class="submit button" value="Search">
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="item mobile-settings-box has-sub">
				<a href="#"> <span class="icon"> <i class="fa fa-cog"
						aria-hidden="true"></i>
				</span>
				</a>
				<div class="block-sub">
					<a href="#" class="close"> <i class="fa fa-times"
						aria-hidden="true"></i>
					</a>
					<div class="block-sub-item">
						<h5 class="block-item-title">Currency</h5>
						<form class="currency-form zentimo-language">
							<ul class="zentimo-language-wrap">
								<li class="active"><a href="#"> <span> English
											(USD) </span>
								</a></li>
							</ul>
						</form>
					</div>
				</div>
			</div>
			<div class="item menu-bar">
				<a class=" mobile-navigation  menu-toggle" href="#"> <span></span>
					<span></span> <span></span>
				</a>
			</div>
		</div>
	</div>
	<!-- 内容开始 -->
	<div class="main-content main-content-checkout">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin"><a href="index.jsp">Home</a>
							</li>
							<li class="trail-item trail-end active">Checkout</li>
						</ul>
					</div>
				</div>
			</div>
			<h3 class="custom_blog_title">Checkout</h3>
			<div class="checkout-wrapp">
			
				<div class="payment-method-wrapp">
					<div class="payment-method-form checkout-form">
						<div class="row-col-1 row-col">
							<!-- 支付开始 -->
							<div class="payment-method">
								<h3 class="title-form">Payment Method</h3>
								
								<p class="form-row form-row-first">
									<label class="text">Recipient</label> 
									<input title="first" readonly="readonly"
									name="userId" id="userId" value="${sessionScope.userId }" 
									type="text" class="input-text">
								</p>
								
								<div class="group-button-payment">
									 <a
										href="#" class="button btn-paypal">AlPay</a>
								</div>
								<p class="form-row form-row-card-number">
									<label class="text">Card number</label> 
									<input type="text" id="alId" required="required"
										class="input-text" 
										placeholder="xxx - xxx - xxx - xxx">
								</p>
								
							</div>
							<!-- /支付结束 -->
						</div>
						
					</div>
					
					<div class="button-control">
						<a href="index.jsp" class="button btn-back-to-shipping">
							BACK TO SHIPPING
						</a> 
						<a onclick="payfor()"
						class="button btn-pay-now">
							PAY NOW
						</a>
						
					</div>
					<%-- href="success.html?userId=${sessionScope.username }" --%> 
				</div>
				
			</div>
		</div>
	</div>
	<!-- /内容结束 -->

	<footer class="footer style7">
		<div class="container">
			<div class="container-wapper">
				<div class="row">
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
						<div class="widget-box">
							<div class="single-img">
								<a href="index.html"><img src="assets/images/logo.png"
									alt="img"></a>
							</div>
							<ul class="menu">
								<li class="menu-item"><a href="#"><span
										class="flaticon-placeholder"></span>45 Grand Central Terminal
										New York,NY 1017 United State USA</a></li>
								<li class="menu-item"><a href="#"><span
										class="flaticon-phone-call"></span>(+123) 456 789 - (+123) 666
										888</a></li>
								<li class="menu-item"><a href="#"><span
										class="fa fa-envelope-o"></span>Contact@yourcompany.com</a></li>
								<li class="menu-item"><a href="#"><span
										class="flaticon-clock"></span>Mon-Sat 9:00pm - 5:00pm Sun :
										Closed</a></li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
						<div class="zentimo-custommenu default">
							<h2 class="widgettitle">Quick Menu</h2>
							<ul class="menu">
								<li class="menu-item"><a href="#">Audio & Theater</a></li>
								<li class="menu-item"><a href="#">Photo & Video</a></li>
								<li class="menu-item"><a href="#">Headphones</a></li>
								<li class="menu-item"><a href="#">Wireless Speakers</a></li>
								<li class="menu-item"><a href="#">Electronics</a></li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-2">
						<div class="zentimo-custommenu default">
							<h2 class="widgettitle">Information</h2>
							<ul class="menu">
								<li class="menu-item"><a href="#">FAQs</a></li>
								<li class="menu-item"><a href="#">Track Order</a></li>
								<li class="menu-item"><a href="#">Delivery</a></li>
								<li class="menu-item"><a href="#">Contact Us</a></li>
								<li class="menu-item"><a href="#">Return</a></li>
							</ul>
						</div>
					</div>
					<div class="box-footer col-xs-12 col-sm-6 col-md-6 col-lg-4">
						<div class="zentimo-newsletter style1">
							<div class="newsletter-head">
								<h3 class="title">Newsletter</h3>
							</div>
							<div class="newsletter-form-wrap">
								<div class="list">Get notified of new products, limited
									releases, and more.</div>
								<input type="email" class="input-text email email-newsletter"
									placeholder="Your email letter">
								<button class="button btn-submit submit-newsletter">SUBSCRIBE</button>
							</div>
						</div>
						<div class="zentimo-socials">
							<ul class="socials">
								<li><a href="#" class="social-item" target="_blank"> <i
										class="icon fa fa-facebook"></i>
								</a></li>
								<li><a href="#" class="social-item" target="_blank"> <i
										class="icon fa fa-twitter"></i>
								</a></li>
								<li><a href="#" class="social-item" target="_blank"> <i
										class="icon fa fa-instagram"></i>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 border-custom">
						<span></span>
					</div>
				</div>
				<div class="footer-end">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="coppyright">
								Copyright © 2019 <a href="http://www.bootstrapmb.com">Zentimo</a>
								. All rights reserved
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="zentimo-payment">
								<img src="assets/images/payments.png" alt="img">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<div class="footer-device-mobile">
		<div class="wapper">
			<div class="footer-device-mobile-item device-home">
				<a href="index.html"> <span class="icon"> <i
						class="fa fa-home" aria-hidden="true"></i>
				</span> Home
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-wishlist">
				<a href="#"> <span class="icon"> <i class="fa fa-heart"
						aria-hidden="true"></i>
				</span> Wishlist
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-cart">
				<a href="#"> <span class="icon"> <i
						class="flaticon-online-shopping-cart" aria-hidden="true"></i> <span
						class="count-icon"> 0 </span>
				</span> <span class="text">Cart</span>
				</a>
			</div>
			<div class="footer-device-mobile-item device-home device-user">
				<a href="login.html"> <span class="icon"> <i
						class="flaticon-profile" aria-hidden="true"></i>
				</span> Account
				</a>
			</div>
		</div>
	</div>
	<a href="#" class="backtotop"> <i class="pe-7s-angle-up"></i>
	</a>
	<script src="assets/js/jquery-1.12.4.min.js"></script>
	<script src="assets/js/jquery.plugin-countdown.min.js"></script>
	<script src="assets/js/jquery-countdown.min.js"></script>
	<script
		src="http://cdn.bootstrapmb.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/magnific-popup.min.js"></script>
	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/jquery.scrollbar.min.js"></script>
	<script src="assets/js/jquery-ui.min.js"></script>
	<script src="assets/js/mobile-menu.js"></script>
	<script src="assets/js/chosen.min.js"></script>
	<script src="assets/js/slick.js"></script>
	<script src="assets/js/jquery.elevateZoom.min.js"></script>
	<script src="assets/js/jquery.actual.min.js"></script>
	<script src="assets/js/fancybox/source/jquery.fancybox.js"></script>
	<script src="assets/js/lightbox.min.js"></script>
	<script src="assets/js/owl.thumbs.min.js"></script>
	<script src="assets/js/jquery.scrollbar.min.js"></script>
	<script
		src='http://ditu.google.cn/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
	<script src="assets/js/frontend-plugin.js"></script>
	<script type="text/javascript">
	

	function payfor() {
		
		$.ajax({
			type : "post",
			url : "payfor.do",
			dataType : "json",
			data : {
				
				userId : $("#userId").val()
			} ,
			success : function(data) {
				 if (data.code == "1") {
					 window.location.href = "success.html";
				} else if (data.code == "2") {
					alert('支付异常,刷新页面重新支付');
				}
			}
		});
	}
	
	/* function payfor() {
		var userId = document.getElementById("userId").value;

		var req = new XMLHttpRequest();

		req.open("post","checkout.do" , true);

		req.setRequestHeader("Content-type","application/x-www-form-urlencoded");

		req.send("userId="+userId+"&flag="+1);

		req.onreadystatechange = function(){
			if(req.readyState == 4){
				var data = req.responseText;
				if(data == '3'){
					alert('支付成功');
				}else{
					alert("登陆失败...用户名或密码错误..");
				}
			}
		}
		}
	} */
	
	
	</script>
</body>
</html>