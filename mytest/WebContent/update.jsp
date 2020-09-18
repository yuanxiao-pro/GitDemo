<%@page import="java.util.List"%>
<%@page import="model.Goods"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Advertising</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="admins/assets/images/favicon.png">
<title></title>
<!-- Bootstrap Core CSS -->
<link rel="icon" type="image/png" sizes="16x16"
	href="admins/assets/images/favicon.png">
<title></title>
<!-- Bootstrap Core CSS -->
<link href="admins/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="admins/css/style.css" rel="stylesheet">
<!-- You can change the theme colors from here -->
<link href="admins/css/colors/blue.css" id="theme" rel="stylesheet">
</head>


<body class="fix-header fix-sidebar card-no-border">
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none"
				stroke-width="2" stroke-miterlimit="10" /> </svg>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->

	<div id="main-wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar">
			<nav class="navbar top-navbar navbar-toggleable-sm navbar-light">
				<!-- ============================================================== -->
				<!-- Logo -->
				<!-- ============================================================== -->
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html"> <!-- Logo icon --> <b>
							<!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <img
							src="admins/assets/images/logo-icon.png" alt="homepage"
							class="dark-logo" />

					</b> <!--End Logo icon --> <!-- Logo text --> <span> <!-- dark Logo text -->
							<img src="admins/assets/images/logo-text.png" alt="homepage"
							class="dark-logo" />
					</span>
					</a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav mr-auto mt-md-0 ">
						<!-- This is  -->
						<li class="nav-item"><a
							class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark"
							href="javascript:void(0)"><i class="ti-menu"></i></a></li>
						<li class="nav-item hidden-sm-down">
							<form class="app-search p-l-20">
								<input type="text" class="form-control"
									placeholder="Search for..."> <a class="srh-btn"><i
									class="ti-search"></i></a>
							</form>
						</li>
					</ul>
					<!-- ============================================================== -->
					<!-- User profile and search -->
					<!-- ============================================================== -->
					<ul class="navbar-nav my-lg-0">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-muted waves-effect waves-dark"
							href="" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"><img
								src="admins/assets/images/users/9e669100-a316-4398-a918-f79d18570aeb.png"
								alt="user" class="profile-pic m-r-5" />admin</a></li>

					</ul>
				</div>
			</nav>
		</header>

		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">

						<li><a href="pages-blank.html" class="waves-effect"> <i
								class="fa fa-columns m-r-10" aria-hidden="true"></i> Home
						</a></li>

						<li>
							<!-- 查询销售额 --> <a href="caculate.do" class="waves-effect"> <i
								class="fa fa-clock-o m-r-10" aria-hidden="true"></i> Dashboard
						</a>
						</li>

						<!-- 点击加入商品表查询 -->
						<li><a href="selectGoodsAll.do" class="waves-effect"> <i
								class="fa fa-table m-r-10" aria-hidden="true"></i> Basic Table
						</a></li>

						<li><a href="selectOrders.do" class="waves-effect"> <i
								class="fa fa-table m-r-10" aria-hidden="true"></i> Order Table

						</a></li>

						<li><a href="ad.html" class="waves-effect"> <i
								class="fa fa-columns m-r-10" aria-hidden="true"></i> Advertising
								Management
						</a></li>

						<li><a href="selectAdvert.do" class="waves-effect"> <i
								class="fa fa-columns m-r-10" aria-hidden="true"></i> Show
								Advertising
						</a></li>




					</ul>

				</nav>
			</div>
		</aside>
		<div class="page-wrapper">

			<div class="container-fluid">

				<div class="row page-titles">
					<div class="col-md-6 col-8 align-self-center">
						<h3 class="text-themecolor m-b-0 m-t-0">Dashboard</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
							<li class="breadcrumb-item active">Dashboard</li>
						</ol>
					</div>

				</div>
				<div class="row">


					<div class="col-lg-6 col-md-6 col-sm-12">
						<div class="login-item">
							<h5 class="title-login">Place the AD to page</h5>

							<form action="updateByInfoId.do" method="post"
						enctype="multipart/form-data">
						
								<p class="form-row form-row-wide">
									<label class="text"></label> 
									
									<input value="${list.get(0).goodId }" name="goodId"
								hidden="hidden" />
								
								</p>

								<p class="form-row form-row-wide">
									<label class="text"></label> 
									
									
									<input type="text" placeholder="名称"
									style="width: 170px" name="goodName"
									value="${list.get(0).goodName }" required="required" />
								</p>

								<p class="form-row form-row-wide">
									<label class="text"></label> 
									
									
									<input type="number" placeholder="价格"
									style="width: 170px" name="goodPrice"
									value="${list.get(0).goodPrice }" required="required" />
								</p>
								
								<p class="form-row form-row-wide">
									<label class="text"></label> 
									
									
									<input type="number" placeholder="折扣"
									style="width: 170px" name="goodDis"
									value="${list.get(0).goodDis }" required="required" /></p>
								
								<p class="form-row form-row-wide">
									<label class="text"></label> 
									
									
									<input type="text" placeholder="品牌"
									style="width: 170px" name="goodBrand"
									value="${list.get(0).goodBrand }" required="required" /></td>
							
								</p>
								
								<p class="form-row form-row-wide">
									<label class="text"></label> 
									
									
									<img
									src="assets/images/${list.get(0).goodPic }"
									style="width: 100px">
									
									<input type="file" name="myFile" required="required"/>
							
								</p>

								<p class="form-row form-row-wide">
									<label class="text"></label> 
									<input type="text" placeholder="描述"
									style="width: 170px" name="goodDiscribe"
									value="${list.get(0).goodDiscribe }" required="required" />
							
								</p>

								<p class="form-row form-row-wide">
									<label class="text"></label> 
									<input type="text" placeholder="状态"
									style="width: 170px" name="goodStatus"
									value="${list.get(0).goodStatus }" required="required" />
								</p>
								<p class="form-row form-row-wide">
									<label class="text"></label> 
									<input type="number" placeholder="数量"
									style="width: 170px" name="goodAcount"
									value="${list.get(0).goodAcount }" required="required" />
								</p>
									
								<p class="form-row form-row-wide">
									<label class="text"></label> 
									<input type="text" placeholder="参数"
									style="width: 170px" name="goodSize"
									value="${list.get(0).goodSizeId }" required="required" />
								</p>
								
								<p class="form-row form-row-wide">
									<label class="text"></label> 
									<select name="category" placeholder="类别"
									style="width: 180px">
										<option value="1">TV</option>
										<option value="2">Headphones</option>
										<option value="3">CellPhone</option>
										<option value="4">Camera</option>
								</select>
								</p>

								
								<p class="">
									<input type="submit" class="button-submit" value="UPDATE NOW"/>
								</p>
								
							</form>

						</div>
					</div>
				</div>
				
				<%-- <div id="for">

					

							<input value="${list.get(0).goodId }" name="goodId"
								hidden="hidden" />

							<tr>
								<td>
								<input type="text" placeholder="名称"
									style="width: 170px" name="goodName"
									value="${list.get(0).goodName }" required="required" /></td>
							</tr>

							<tr>
								<td><input type="number" placeholder="价格"
									style="width: 170px" name="goodPrice"
									value="${list.get(0).goodPrice }" required="required" /></td>
							</tr>

							<tr>
								<td><input type="number" placeholder="折扣"
									style="width: 170px" name="goodDis"
									value="${list.get(0).goodDis }" required="required" /></td>
							</tr>

							<tr>
								<td><input type="text" placeholder="品牌"
									style="width: 170px" name="goodBrand"
									value="${list.get(0).goodBrand }" required="required" /></td>
							</tr>

							<tr>
								<td>
									<!-- style="width:170px" --> <img
									src="assets/images/${list.get(0).goodPic }"
									style="width: 170px">

								</td>
							</tr>

							<tr>
								<td><input type="text" placeholder="描述"
									style="width: 170px" name="goodDiscribe"
									value="${list.get(0).goodDiscribe }" required="required" /></td>
							</tr>

							<tr>
								<td><input type="text" placeholder="状态"
									style="width: 170px" name="goodStatus"
									value="${list.get(0).goodStatus }" required="required" /></td>
							</tr>

							<tr>
								<td><input type="number" placeholder="数量"
									style="width: 170px" name="goodAcount"
									value="${list.get(0).goodAcount }" required="required" /></td>
							</tr>

							<tr>
								<td><input type="text" placeholder="参数"
									style="width: 170px" name="goodSize"
									value="${list.get(0).goodSizeId }" required="required" /></td>
							</tr>

							<tr>
								<td><select name="category" placeholder="类别"
									style="width: 180px">
										<option value="1">TV</option>
										<option value="2">Headphones</option>
										<option value="3">CellPhone</option>
										<option value="4">Camera</option>
								</select></td>
							</tr>

							<tr>
								<td><input type="file" name="myFile" style="width: 170px"
									required="required" /></td>
							</tr>

							<tr>
								<td><input type="submit" value="" /></td>
							</tr>
						</table>
					</form>

				</div> --%>

				<div id="women"></div>

				<script src="admins/assets/plugins/jquery/jquery.min.js"></script>
				<!-- Bootstrap tether Core JavaScript -->
				<script src="admins/assets/plugins/bootstrap/js/tether.min.js"></script>
				<script src="admins/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
				<!-- slimscrollbar scrollbar JavaScript -->
				<script src="admins/js/jquery.slimscroll.js"></script>
				<!--Wave Effects -->
				<script src="admins/js/waves.js"></script>
				<!--Menu sidebar -->
				<script src="admins/js/sidebarmenu.js"></script>
				<!--stickey kit -->
				<script
					src="admins/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
				<!--Custom JavaScript -->
				<script src="admins/js/custom.min.js"></script>
				<!-- ============================================================== -->
				<!-- This page plugins -->
				<!-- ============================================================== -->
				<!-- Flot Charts JavaScript -->
				<script src="admins/assets/plugins/flot/jquery.flot.js"></script>
				<script
					src="admins/assets/plugins/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
				<script src="admins/js/flot-data.js"></script>
				<!-- ============================================================== -->
				<!-- Style switcher -->
				<!-- ============================================================== -->
				<script
					src="admins/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>