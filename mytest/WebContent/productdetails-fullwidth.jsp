<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zentimo</title>

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
<body class="details-page">

	<!-- 页头开始 -->
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
							<a href="index.html"> <img src="assets/images/logo.png"
								alt="img">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
						<div class="block-search-block">
							<form class="form-search form-search-width-category">
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
														<!-- <li class="menu-item"><a
															href="productdetails-leftsidebar.html">Product left
																sidebar</a></li>
														<li class="menu-item"><a
															href="productdetails-rightsidebar.html">Product right
																sidebar</a></li> -->
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
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- /页头结束 -->


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
								<input type="text" class="search-input" id="goodName"
									name="goodName" placeholder=""> <input type="submit"
									class="submit button" value="Search">
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

	<div class="main-content main-content-details single no-sidebar">
		<div class="container">
			<div class="row">
				<!-- 页面左上角开始 -->
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						${sessionScope.username }</div>
					<br />
				</div>
				<!-- /页面左上角结束 -->
			</div>

			<div class="row">
				<div
					class="content-area content-details full-width col-lg-9 col-md-8 col-sm-12 col-xs-12">
					<div class="site-main">

						${list.get(0).goodId}
						<div class="details-product">
							<div class="details-thumd">
								<div
									class="image-preview-container image-thick-box image_preview_container">
									<img id="img_zoom"
										data-zoom-image="assets/images/${list.get(0).goodPic }"
										src="assets/images/${list.get(0).goodPic }" alt="img"> <a
										href="#" class="btn-zoom open_qv"> <i class="fa fa-search"
										aria-hidden="true"></i>
									</a>
								</div>

							</div>

							<div class="details-infor">
								<h1 class="product-title">
									<span>${list.get(0).goodName}</span>
								</h1>
								<br />
								<div class="price">
									<span>${list.get(0).goodPrice* list.get(0).goodDis}</span>
								</div>
								<div class="product-details-description">
									<ul>
										<li>${list.get(0).goodDiscribe }</li>
									</ul>
								</div>
								<div class="variations">

									<div class="attribute attribute_size">
										<div class="size-text text-attribute">Size:</div>
										<div class="list-size list-item">
											<!-- 动态加载size -->

											<a href="#" class="">${list.get(0).goodSizeId }GB</a>

										</div>
									</div>
								</div>
								<div class="group-button">


									<form
										action="addToCart.do?userId=${sessionScope.username }&goodId=${list.get(0).goodId}"
										method="post" enctype="application/x-www-form-urlencoded">
										<div class="quantity-add-to-cart">
											<div class="quantity">
												<div class="control">
													<!-- 数量增减 -->

													<a class="btn-number qtyminus quantity-minus" href="#">-</a>

													<!-- 默认为1 -->
													<input type="text" data-step="1" data-min="1" value="1"
														name="number" id="number" title="Qty"
														class="input-qty qty" size="4"> <a href="#"
														class="btn-number qtyplus quantity-plus">+</a>

													<!-- /数量增减 -->
												</div>
											</div>

											<input type="submit" value="Add to cart"
												class="single_add_to_cart_button button" />

										</div>
									</form>


								</div>
							</div>

						</div>


						<div class="tab-details-product">
							<ul class="tab-link">
								<li class="active"><a data-toggle="tab"
									aria-expanded="true" href="#product-descriptions">Descriptions
								</a></li>
								<li class=""><a data-toggle="tab" aria-expanded="true"
									href="#information">Information </a></li>

								<input id="goodId" value="${list.get(0).goodId }" type="hidden" />

								<li class="">
									<!-- 点击它的时候再加载评论 --> <a data-toggle="tab" aria-expanded="true"
									onclick="loadDiscribe()" href="#reviews">Reviews</a> <!-- 加载评论 -->
								</li>
								<!-- loadDiscribe.do?goodId=${list.get(0).goodId } -->
								<!-- javascript:loadDiscribe() -->
								<!-- onclick="loadDiscribe()" -->
							</ul>
							<div class="tab-container">
								<div id="product-descriptions" class="tab-panel active">
									<p>This is it.This is what matters.The experience of a
										product.How it makes someone feel. (When you start by
										imaginingWhat that might be like,You step back.You think. Who
										will this help?)Will it make life better?Does this deserve to
										exist? (If you are busy making everything,How can you perfect
										anything? We don't believe in coincidence.Or dumb luck.There
										are a thousand "no's"For every "yes.") We spend a lot of
										timeOn a few great things. Until every idea we touchEnhances
										each life it touches. (We're engineers and artists.Craftsmen
										and inventors.We sign our work.) You may rarely look at it.But
										you'll always feel it.This is our signature. And it means
										everything. Designed by Apple in California</p>

								</div>


								<!-- 评论 -->

								<!-- 
                            
                            	加载评论, ajax自动加载 / 点击标签加载?
                            	提交评论
                             
                             -->
								<div id="reviews" class="tab-panel">
									<div class="reviews-tab">


										<div class="comments">
											<c:choose>
												<c:when test="${disList!=null }">

													<c:forEach var="dis" items="${disList }" step="1">
														<h2 class="reviews-title">
															<span>${dis.goodName }</span>
														</h2>

														<ol class="commentlist">
															<li class="conment">
																<div class="conment-container">

																	<div class="comment-text">

																		<p class="meta">
																			<strong class="author">**:</strong>
																		</p>

																		<div class="description">
																			<p>${dis.discribeText }</p>
																		</div>

																	</div>
																</div>
															</li>
														</ol>
													</c:forEach>
												</c:when>

												<c:otherwise>
												No discribe now!
											</c:otherwise>
											</c:choose>
										</div>


										<!-- 提交评论 -->
										<div class="review_form_wrapper">
											<div class="review_form">
												<div class="comment-respond">
													<span class="comment-reply-title">Add a review </span>
													<form class="comment-form-review" method="post"
														action="addDiscribe.do?userId=${sessionScope.username }&goodId=${list.get(0).goodId}">
														<p class="comment-notes">
															<span class="email-notes">Your ID will not be
																published.</span> Required fields are marked <span
																class="required">*</span>
														</p>

														<p class="comment-form-comment">
															<label> Your review <span class="required">*</span>
															</label>
															<textarea title="review" id="comment" name="comment"
																cols="45" placeholder="Enter.." rows="8"></textarea>
														</p>

														<p class="form-submit">
															<input type="submit" id="submit" class="submit"
																value="Submit">
														</p>
													</form>
												</div>
											</div>
										</div>
										<!-- 提交评论结束 -->
									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 内容结束 -->
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
		 alert('支付成功');//忽略
		 }else{
		 alert("登陆失败...用户名或密码错误..");
		 }
		 }
		 }
		 } */

		function loadDiscribe() {

			var goodId = document.getElementById("goodId").value;

			var req = new XMLHttpRequest();

			req.open("post", "loadDiscribe.do", true);

			req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

			req.send("goodId=" + goodId);

			req.onreadystatechange = function() {
				if (req.readyState == 4) {
					var data = req.responseText;
					if (data == '3') {
						alert('加载出错...');//忽略
					}
				}
			}
		}
	</script>

</body>
</html>