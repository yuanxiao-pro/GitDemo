<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Statistics</title>
<meta charset="utf-8">
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
<link href="admins/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="admins/css/style.css" rel="stylesheet">
<!-- You can change the theme colors from here -->
<link href="admins/css/colors/blue.css" id="theme" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

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
								alt="user"
								class="profile-pic m-r-5" />admin</a></li>
								
					</ul>
				</div>
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
                        
                        <li>
                            <a href="pages-blank.html" class="waves-effect">
                            <i class="fa fa-columns m-r-10" aria-hidden="true"></i>
                            Home
                            </a>
                        </li>
                        
                        <li>
                        <!-- 查询销售额 -->
                            <a href="caculate.do" class="waves-effect">
                            	<i class="fa fa-clock-o m-r-10" aria-hidden="true"></i>
                            	Dashboard
                            </a>
                        </li>
                        
                        <!-- 点击加入商品表查询 -->
                        <li>
                            <a href="selectGoodsAll.do" class="waves-effect">
                            <i class="fa fa-table m-r-10" aria-hidden="true"></i>
                            Basic Table
                            </a>
                        </li>
						
						<li><a href="selectOrders.do" class="waves-effect"> <i
								class="fa fa-table m-r-10" aria-hidden="true"></i> Order Table

						</a></li>
						
						<li>
                            <a href="ad.html" class="waves-effect">
                            <i class="fa fa-columns m-r-10" aria-hidden="true"></i>
								Advertising Management
                            </a>
                        </li>
                        
                        <li>
                            <a href="selectAdvert.do" class="waves-effect">
                            <i class="fa fa-columns m-r-10" aria-hidden="true"></i>
								Show Advertising
                            </a>
                        </li>
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

					<!-- Column -->
					<div class="col-sm-6">
						<div class="card">
							<div class="card-block">
								<h4 class="card-title">Daily Sales</h4>
								<div class="text-right">
									<h2 class="font-light m-b-0">
										<i class="ti-arrow-up text-success"></i>$+ ${result.get(0).get("dailyRes").get(0).get("dailymoney") }
									</h2>
									<span class="text-muted">Todays Income</span>	
								</div>
								<span class="text-success">${result.get(0).get("dailyRes").get(0).get("dailyprecent") }% To Aim</span>
								<div class="progress">
									<!--  -->
									
									<div class="progress-bar bg-success" role="progressbar"
										style="width: ${result.get(0).get("dailyRes").get(0).get("dailyprecent") }%; height: 6px;" aria-valuenow="25"
										aria-valuemin="0" aria-valuemax="100">
									</div>
								
								</div>
							</div>
						</div>
					</div>
					<!-- Column -->

					<div class="col-sm-6">
						<div class="card">
							<div class="card-block">
								<h4 class="card-title">Monthly Sales</h4>
								<div class="text-right">
									<h2 class="font-light m-b-0">
										<i class="ti-arrow-up text-info"></i>$+ ${result.get(0).get("monthlyRes").get(0).get("monthlymoney") }
									</h2>
									<span class="text-muted">Todays Income</span>
								</div>
								<span class="text-info">${result.get(0).get("monthlyRes").get(0).get("monthlyprecent") }% To Aim</span>
								<div class="progress">
									<div class="progress-bar bg-info" role="progressbar"
										style="width: ${result.get(0).get("monthlyRes").get(0).get("monthlyprecent") }%; height: 6px;" aria-valuenow="25"
										aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
					</div>



					<%-- <c:choose>
						<c:when test="">
							<c:forEach var="">
								<div class="col-sm-6">
									<div class="card">
										<div class="card-block">
											<h4 class="card-title">Weekly Sales</h4>
											<div class="text-right">
												<h2 class="font-light m-b-0">
													<i class="ti-arrow-up text-info"></i>$5,000
												</h2>
											</div>
											<span class="text-info">30%</span>
											<div class="progress">
												<div class="progress-bar bg-info" role="progressbar"
													style="width: 30%; height: 6px;" aria-valuenow="25"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
							Loading...
						</c:otherwise>

					</c:choose> --%>

					

				</div>

			</div>

			<footer class="footer text-center"> Copyright &copy;
				2019.Company name All rights reserved. </footer>

		</div>

	</div>

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