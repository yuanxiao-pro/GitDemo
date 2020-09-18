<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
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


</head>



<body class="fix-header card-no-border">
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
							aria-expanded="false"> <img
								src="admins/assets/images/users/9e669100-a316-4398-a918-f79d18570aeb.png" 
								alt="user"
								class="profile-pic m-r-5" />admin
						</a></li>
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
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>

		<div class="page-wrapper">

			<div class="container-fluid">

				<div class="row page-titles">
					<div class="col-md-6 col-8 align-self-center">
						<h3 class="text-themecolor m-b-0 m-t-0">Table</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
							<li class="breadcrumb-item active">Table</li>

						</ol>
					</div>
					<div class="col-md-6 col-4 align-self-center">
						<a href="good.jsp" class="btn pull-right hidden-sm-down btn-success">
							Add Products </a>
					</div>
				</div>
				<!-- ====================================== -->
				<div class="row">
					<!-- column -->
					<div class="col-sm-12">
						<div class="card">
							<div class="card-block">
								<h4 class="card-title">Order Table</h4>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<!-- 商品ID -->
												<th>#</th>
												<th>Order ID</th>
												<th>Time</th>
												<th>Money</th>
												<th>User ID</th>
												<th>Status</th>

											</tr>
										</thead>

										<!-- 循环放在这里 -->
										<tbody>

											<c:choose>
												<c:when test="${pageInfo!=null }">

													<c:forEach items="${pageInfo.list }" var="order" step="1">

														<tr>
															<td>${order.orderId }</td>
															<td>${order.orderTime }</td>
															<td>${order.orderMoney }</td>
															<td>${order.userId }</td>
															<td>${order.orderStatus }</td>
															<td>
														</tr>

													</c:forEach>

												</c:when>

												<c:otherwise>
													No Products in DB
												</c:otherwise>

											</c:choose>

										</tbody>



									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ====================================== -->
			</div>
			
			<!-- ========分页条======== -->
			<div class="pagination">
					<ul>
						
						<li class="first-child">
							<a href="selectOrders.do?nowPage=1">首页</a>
						</li>
								
						<li class="${pageInfo.hasPreviousPage?'first-child':'disabled'}">
							<a href="selectOrders.do?nowPage=${pageInfo.prePage}">上一页</a>
						</li>
							
						<li class="${pageInfo.hasNextPage?'first-child':'disabled'}">
							<a href="selectOrders.do?nowPage=${pageInfo.nextPage}">下一页</a>
						</li>
								
									
								
						<li class="first-child">
						<a
							href="selectOrders.do?nowPage=${pageInfo.pages}">尾页</a></li>
							
						<li class="disabled"><a>当前位置第${pageInfo.pageNum}页,共${pageInfo.pages}页,总${pageInfo.total}条记录</a></li>

							
					</ul>
				</div>
				<!-- ========/分页条======== -->



				<footer class="footer text-center"> Copyright &copy;
					2019.Company name All rights reserved. </footer>

			</div>

			<!-- ============================================================== -->
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
		<!-- Style switcher -->
		<!-- ============================================================== -->
		<script
			src="admins/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>

		<script type="text/javascript">
		
	
	
	</script>
</body>

</html>