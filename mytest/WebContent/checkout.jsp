<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zentimo - Checkout</title>
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
<body class="inblog-page" onload="loadProvince()">
	<header class="header style7">
		<div class="top-bar">
			<div class="container">
				<div class="top-bar-left">
					<div class="header-message">Welcome to our online store!</div>
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
							<a href=""> <img src="assets/images/logo.png"
								alt="img">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
						<div class="block-search-block">
							<form class="form-search form-search-width-category"
								action="selectGoodByCategory.do">
								<div class="form-content">
									<div class="category">
										<select title="cate" name="category_id"
											data-placeholder="All Categories" class="chosen-select"
											tabindex="1">
											<option value="1">TV</option>
											<!-- 这里是要传给后台的内容 -->
											<option value="2">Headphones</option>
											<option value="3">CellPhone</option>
											<option value="4">Camera</option>
										</select>
									</div>

									<div class="inner">
										<input type="text" class="input" name="goodName" value=""
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
							<!-- 小购物车开始 -->

							<div
								class="block-minicart zentimo-mini-cart block-header zentimo-dropdown">
								<a href="loadCart.do?username=${sessionScope.username}"
									class="shopcart-icon"> </a>
							</div>
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
								<li class="menu-item"><a title="TV"
									href="selectByCategory.do?category_id=1"
									class="zentimo-menu-item-title">TV</a></li>

								<li class="menu-item"><a title="Headphones"
									href="selectByCategory.do?category_id=2"
									class="zentimo-menu-item-title">Headphones</a></li>

								<li class="menu-item"><a title="Cell Phones"
									href="selectByCategory.do?category_id=3"
									class="zentimo-menu-item-title">Cell Phones</a></li>

								<li class="menu-item"><a title="Camera"
									href="selectByCategory.do?category_id=4"
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
			
			<%-- <form action="checkout.do?userId=${sessionScope.username }"> --%>
			<!-- checkout.do?userId=${sessionScope.username } -->
				<div class="shipping-address-form-wrapp">
					<div class="shipping-address-form  checkout-form">
						<div class="row-col-1 row-col">
							<!-- 地址表单 -->
							<div class="shipping-address">
							<%-- <c:set var="ses" value="${sessionScope.username }"> --%>
								
							<%-- <form action="checkout.do?userId=${sessionScope.username }" method="post"> --%>
								<h3 class="title-form">Shipping Address</h3>
								<p class="form-row form-row-first">
									<label class="text">Name</label> 
									<input title="first"
									name="username" id="username" 
									type="text" class="input-text">
								</p>
								
								<p class="form-row form-row-first">
									<label class="text">Recipient</label> 
									<input title="first"
									name="userId" id="userId" value="${sessionScope.userId }" 
									type="text" class="input-text">
								</p>
								
								<br/>
								
								<p class="form-row form-row-wide">
									<label class="text">Locality</label> 
									<select id="province" onchange="loadCity()"></select> 
									<select id="city" onchange="loadArea()"></select> 
									<select id="area"></select>
								</p>
								
								<p class="form-row form-row-first">
									<label class="text">Phone Number</label> 
									<input title="zip"
									name="phone" id="phone"
									type="text" class="input-text">
								</p>
								<p class="form-row form-row-last">
									<label class="text">Address</label> 
									<input title="address"
									name="address" id="address"
									type="text" class="input-text">
								</p>
							</div>
							<!-- /地址表单结束 -->
						</div>
						<!-- 侧边表单 -->
						<div class="row-col-2 row-col">
							<div class="your-order">
								<h3 class="title-form">Your Order</h3>

								<ul class="list-product-order">
									<!-- 单个商品 -->

									<c:choose>
										<c:when test="${list != null }">
											<c:forEach var="cart" items="${list }" varStatus="status">
												<li class="product-item-order">

													<div class="product-thumb">
														<a href=""> <img src="assets/images/${cart.list.get(0).goodPic }"
															alt="img">
														</a>
													</div>
													<div class="product-order-inner">
														<h5 class="product-name">
															<a href="#">${cart.list.get(0).goodName }</a>
														</h5>
														<span class="attributes-select attributes-size">${cart.list.get(0).goodSizeId }GB</span>
														<div class="price">
															<c:set var="t_total" value="${t_total +cart.list.get(0).goodPrice*cart.goodNumber*cart.list.get(0).goodDis }" /><span class="count">x ${cart.goodNumber }</span>
														</div>
													</div>
												</li>
												
												<c:if test="${status.count == list.size() }">
															<tr>
															<td class="actions">
																<div class="order-total">
																	<span class="title"> 
																		Total Price: 
																		<input id="totalMoney" value="${t_total }"readonly="readonly">
																		
																		 
																	</span> 
																	<span class="total-price">  </span>
																</div>
															</td>
															</tr>
														
												</c:if>
												
											</c:forEach>
										</c:when>

										<c:otherwise>
											加载失败...
										</c:otherwise>

									</c:choose>
									<!-- /单个商品结束 -->
								</ul>

							</div>
							<br>
							<!-- /侧边表单结束 -->
						<div class="button-control">
							<a href="#" class="button btn-back-to-shipping">BACK TO
							SHIPPING</a> 
						
							<button type="submit" 
							onclick="checkout()"
							class="button btn-pay-now">
									PAY NOW
							</button>
							
							
						</div>
						</div>
						
					</div>
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
	function loadProvince(){
		var req = new XMLHttpRequest();
		req.open("post","load.do",true);
		req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		req.send(null);
		req.onreadystatechange = function(){
			
			if(req.readyState == 4){
				var res = req.responseText;
				console.log(res);
				//eval
				var obj = eval(res);
				
				//循环数组  追加到select中
				for(var i = 0 ; i < obj.length ; i++){
					var one = obj[i];
					//创建option节点 ，追加到 select中
					//创建节点
					var option = document.createElement("option");
					option.value = one.code;
					option.text = one.name;
					
					//添加到select中
					var province = document.getElementById("province");
					//追加子节点
					province.appendChild(option);
				}
				//默认也去加载一下市
				loadCity();
			}
		}
	}
	
	function loadCity(){
		//加载市的时候  需要知道当前选择的是那个省 使用省的代码  去查询后台
		var province = document.getElementById("province");
		var code = province.value;
		//ajax
		var req = new XMLHttpRequest();
		req.open("post","load.do",true);
		req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		req.send("flag=1&code="+code);
		req.onreadystatechange = function(){
			
			if(req.readyState == 4){
				var res = req.responseText;
				console.log(res);
				//eval
				var obj = eval(res);
				var city = document.getElementById("city");
				
				var nodes = city.childNodes;
			
				while(nodes.length > 0){
					city.removeChild(city.lastChild);
				}
				for(var i = 0 ; i < obj.length ; i++){
					var one = obj[i];
					var option = document.createElement("option");
					option.value = one.code;
					option.text = one.name;
					
					var city = document.getElementById("city");
					city.appendChild(option);
				}
				loadArea();
			}
		}
	}
	
	function loadArea(){
		//加载市的时候  需要知道当前选择的是那个省 使用省的代码  去查询后台
		var city = document.getElementById("city");
		var code = city.value;
		var username = document.getElementById("neckname");
		//ajax
		var req = new XMLHttpRequest();
		req.open("post","load.do",true);
		req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		req.send("flag=2&code="+code);
		req.onreadystatechange = function(){
			
			if(req.readyState == 4){
				var res = req.responseText;
				console.log(res);
				//eval
				var obj = eval(res);
				var area = document.getElementById("area");
				
				var nodes = area.childNodes;
			
				while(nodes.length > 0){
					area.removeChild(area.lastChild);
				}
				for(var i = 0 ; i < obj.length ; i++){
					var one = obj[i];
					var option = document.createElement("option");
					option.value = one.code;
					option.text = one.name;
					
					var area = document.getElementById("area");
					area.appendChild(option);
				}
			}
		}
	}
	
	function checkout() {
		
		$.ajax({
			type : "post",
			url : "checkout.do",
			dataType : "json",
			data : {
				province : $("#province").val(),
				city : $("#city").val(),
				area : $("#area").val(),
				userId : $("#userId").val(),
				username : $("#username").val(),
				phone : $("#phone").val(),
				address : $("#address").val(),
				totalMoney:$("#totalMoney").val()
			}  ,
			success : function(data) {
				if (data.code == "1") {
					alert('用户名不可用');
				} else if (data.code == "2") {
					alert('两次密码不一样');
				} else {
					window.location.href = "payfor.jsp";
				}
			}
		});
	}
	
	</script>
</body>
</html>