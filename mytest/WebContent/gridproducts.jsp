<%@page import="model.Goods"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>Zentimo - Products Grid</title>
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
<body class="productsgrid-page">
	<header class="header style7">
		<div class="top-bar">
			<div class="container">
				<div class="top-bar-left">
					<div class="header-message">
						<span> <c:choose>
								<c:when test="${sessionScope.username != null}">
									<a href="#">欢迎[${sessionScope.username}]登录</a>
								</c:when>
								<c:otherwise>
									<a href="login.html">请登录</a>
								</c:otherwise>
							</c:choose>
						</span>
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
			<div class="logo">
							<a href=""> <img src="assets/images/logo.png"
								alt="img">
							</a>
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
								<li><a href="#"> <span> French (EUR) </span>
								</a></li>
								<li><a href="#"> <span> Japanese (JPY) </span>
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


	<div class="main-content main-content-product no-sidebar">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<li class="trail-item trail-begin"><a href="index.html">Home</a>
							</li>
							<li class="trail-item trail-end active">Grid Products</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div
					class="content-area shop-grid-content full-width col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">Grid Products</h3>

						<!-- 展示开始 -->
						<!-- 返回一个Goods对象,循环加载 -->


						<%-- <c:when test="${list != null}">
								<c:forEach var="good" step="1" items="${list}" varStatus="status">
 --%>
						<ul
							class="row list-products auto-clear equal-container product-grid">

							<c:choose>
								<c:when test="${list != null}">
									<c:forEach var="good" step="1" items="${list}"
										varStatus="status">
										<li
											class="product-item  col-lg-3 col-md-4 col-sm-6 col-xs-6 col-ts-12 style-1">



											<div class="product-inner equal-element">
												<!-- 单个div -->



												<!-- 预览 -->						
												<div class="product-thumb">
													<div class="thumb-inner">
														<a href="selectByGoodId.do?goodId=${good.goodId }">  
														
														<!-- 点击照片加入详情界面 -->
														
															<img src="assets/images/${good.goodPic}"
															alt="img" /> <!-- alt="img" -->
														
														</a>
													</div>
													<!-- <a href="#" class="button quick-wiew-button">Quick View</a> -->
												</div>
												<!-- 预览结束 -->
												
												<div class="product-info">
													<h5 class="product-name product_title">
														<a href="#">${good.goodName}</a>
													</h5>
													<div class="group-info">

														<div class="price">
															<ins> ${good.goodPrice}</ins>
														</div>
													</div>
												</div>
												
												<!-- 加入购物车 -->
												<div class="loop-form-add-to-cart">
													
													<form class="cart" 
													action="addToCart.do?userId=${sessionScope.username }&goodId=${list.get(0).goodId}" 
                             						method="post" 
                             						enctype="application/x-www-form-urlencoded">
														<div class="single_variation_wrap">
															
															<div class="quantity">
																<div class="control">
																	<a class="btn-number qtyminus quantity-minus" href="#">-</a>
																	<input type="text" data-step="1" data-min="1" value="1"
																		name="number" title="Qty" class="input-qty qty" size="4"> <a
																		href="#" class="btn-number qtyplus quantity-plus">+</a>
																</div>
															</div>
															<input type="submit" value="Add to cart" class="single_add_to_cart_button button"/>
															<!-- button class="single_add_to_cart_button button">
																直接加入购物车
																<a href="">Add to cart</a>
																
															</button> -->
														</div>
														
														<div class="variations">
															<div class="variation">
																<label class="variation-label"> Capacity: </label>
																<div class="variation-value">
																	<a href="#" class="change-value text"> <span>10ml</span>
																	</a> <a href="#" class="change-value text"> <span>20ml</span>
																	</a> <a href="#" class="change-value text"> <span>50ml</span>
																	</a>
																</div>
															</div>
														</div>
													</form>
													
												</div>
												<!-- /加入购物车结束 -->	
											</div>

										</li>
										<c:if test="${status.count%4 == 0 }">
											<br />

										</c:if>

									</c:forEach>
								</c:when>
								<c:otherwise>
								No Product!
							</c:otherwise>
							</c:choose>
						</ul>


						<!-- 循环开始 -->

						<!-- /循环结束 -->


						<!-- /展示结束 -->

						<!-- 分页开始 -->
						<div class="pagination clearfix style2">
							<div class="nav-link">
								<a href="#" class="page-numbers"><i
									class="icon fa fa-angle-left" aria-hidden="true"></i></a> <a
									href="#" class="page-numbers">1</a> <a href="#"
									class="page-numbers">2</a> <a href="#"
									class="page-numbers current">3</a> <a href="#"
									class="page-numbers"><i class="icon fa fa-angle-right"
									aria-hidden="true"></i></a>
							</div>
						</div>
						<!-- /分页结束 -->

					</div>
				</div>
				
				<!-- 弹出页开始 -->
				<div class="sidebar col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="wrapper-sidebar shop-sidebar">
						<div class="widget woof_Widget">
							<div class="widget widget-categories">
								<h3 class="widgettitle">Categories</h3>
								<ul class="list-categories">
									<li><input type="checkbox" id="cb1"> <label
										for="cb1" class="label-text"> New Arrivals </label></li>
									<li><input type="checkbox" id="cb2"> <label
										for="cb2" class="label-text"> Electronics </label></li>
									<li><input type="checkbox" id="cb3"> <label
										for="cb3" class="label-text"> Tables </label></li>
									<li><input type="checkbox" id="cb4"> <label
										for="cb4" class="label-text"> TV & Video </label></li>
									<li><input type="checkbox" id="cb5"> <label
										for="cb5" class="label-text"> Accessories </label></li>
									<li><input type="checkbox" id="cb6"> <label
										for="cb6" class="label-text"> Headphones </label></li>
								</ul>
							</div>
							
							<div class="widget widget_filter_price">
								<h4 class="widgettitle">Price</h4>
								<div class="price-slider-wrapper">
									<div data-label-reasult="Range:" data-min="0" data-max="3000"
										data-unit="$" class="slider-range-price " data-value-min="0"
										data-value-max="1000"></div>
									<div class="price-slider-amount">
										<span class="from">$95</span> <span class="to">$215</span>
									</div>
								</div>
							</div>
							
							<div class="widget widget-brand">
								<h3 class="widgettitle">Brand</h3>
								<ul class="list-brand">
									<li><input id="cb7" type="checkbox"> <label
										for="cb7" class="label-text">New Arrivals</label></li>
									<li><input id="cb8" type="checkbox"> <label
										for="cb8" class="label-text">Electronics</label></li>
									<li><input id="cb9" type="checkbox"> <label
										for="cb9" class="label-text">Tables</label></li>
									<li><input id="cb10" type="checkbox"> <label
										for="cb10" class="label-text">TV & Video</label></li>
									<li><input id="cb11" type="checkbox"> <label
										for="cb11" class="label-text">Accessories</label></li>
									<li><input id="cb12" type="checkbox"> <label
										for="cb12" class="label-text">Headphones</label></li>
								</ul>
							</div>
							
							<div class="widget widget_filter_size">
								<h4 class="widgettitle">Size</h4>
								<ul class="list-size">
									<li><a href="#">s</a></li>
									<li><a href="#">s</a></li>
									<li class="active"><a href="#">m</a></li>
									<li><a href="#">l</a></li>
									<li><a href="#">xl</a></li>
									<li><a href="#">xxl</a></li>
								</ul>
							</div>
							
							<div class="widget widget-color">
								<h4 class="widgettitle">Color</h4>
								<div class="list-color">
									<a href="#" class="color1"></a> <a href="#" class="color2 "></a>
									<a href="#" class="color3 active"></a> <a href="#"
										class="color4"></a> <a href="#" class="color5"></a> <a
										href="#" class="color6"></a> <a href="#" class="color7"></a>
								</div>
							</div>
							
							<div class="widget widget-tags">
								<h3 class="widgettitle">Popular Tags</h3>
								<ul class="tagcloud">
									<li class="tag-cloud-link"><a href="#">Laptop</a></li>
									<li class="tag-cloud-link"><a href="#">TV & Video</a></li>
									<li class="tag-cloud-link"><a href="#">New</a></li>
									<li class="tag-cloud-link active"><a href="#">Accessories</a>
									</li>
									<li class="tag-cloud-link"><a href="#">Hot</a></li>
									<li class="tag-cloud-link"><a href="#">Headphones</a></li>
									<li class="tag-cloud-link"><a href="#">Electronics</a></li>
								</ul>
							</div>
						</div>
						<div class="widget newsletter-widget">
							<div class="newsletter-form-wrap ">
								<h3 class="title">Subscribe to Our Newsletter</h3>
								<div class="subtitle">More special Deals, Events &
									Promotions</div>
								<input type="email" class="email"
									placeholder="Your email letter">
								<button type="submit" class="button submit-newsletter">Subscribe</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /弹出页结束 -->
			</div>
		</div>
	</div>
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
	<!-- <script
		src='http://ditu.google.cn/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script> -->
	<script src="assets/js/frontend-plugin.js"></script>
</body>
</html>