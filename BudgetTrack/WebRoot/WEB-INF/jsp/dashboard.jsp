<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dashboard</title>
<link href="<c:url value="resources/bower/bootstrap/dist/css/bootstrap.min.css" />"	rel="stylesheet">
<script src="resources/bower/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript/CSS -->
<script src="resources/bower/bootstrap/dist/js/bootstrap.min.js"></script>
<link href="resources/custom/dashboard.css" rel="stylesheet" type="text/css"/>
<!-- jQuery -->


</head>
<body>
	<div id="navBarHeader">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="header-margin" >
				<span class="navbar-brand" >Make Life Easy</span>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-envelope"></span>
						Notifications </a></li>
				<li><a href="#"><span class="glyphicon glyphicon-cog"></span>
						Settings </a></li>
				<li class="dropdown"><a class="dropdown-toggle"	data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> Rajesh Kumar <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a><span class="glyphicon glyphicon-log-out"></span>
							LogOut</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
			</ul>
		</div>
		<div class="buttons">
			<ul class="btn-justified">
				<li class="btn blue"><a>Earnings</a></li>
				<li class="btn green"><a>Spendings</a></li>
				<li class="btn red"><a>Transactions</a></li>
				<li class="btn purple"><a>Categories</a></li>
				<li class="btn orange"><a>Remainders</a></li>
				<li class="btn yellow"><a >Target for Period</a></li>
			</ul>
		</div>
            
		</nav>
		<div id="sideBarMenu" class="sidebar closed">
			<header>
				<h2>Sidebar</h2>
				<a href="#" id="close"><span class="entypo-cancel"></span></a> 
			</header>
			<ul>
				<li><a href="#"> Earnings</a></li>
				<li><a href="#"> Spendings</a></li>
				<li><a href="#"> Debts</a></li>
				<li><a href="#"> Assets</a></li>
				<li><a href="#"> Receivables</a></li>
				<li><a href="#"> Payables</a></li>
				<li><a href="#"> Txn History</a></li>
				<!-- <li class="dropdown cus" ><a class="dropdown-toggle"	data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> Rajesh Kumar <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a><span class="glyphicon glyphicon-log-out"></span>
							LogOut</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li> -->			
 			</ul>
		</div>
		<div id="trigger" class="sideBarTrg" >
		
		</div>
		<script>
			$(document).ready(function() {
				function sideBaropenClose(){
					menu = $('.sidebar');
					$(this).toggleClass('active');
					menu.toggleClass('closed');
					$('#blurrMe').toggleClass('blurred'); // just here
				}
				
				// Toggle the blurred class
				function sidebar() {
					var trigger = $('#trigger, #close');
					
					trigger.on('click mouseenter', function() {
						sideBaropenClose();
					});
					
				}
				var sideBar = $('#sideBarMenu');
				sideBar.on('mouseleave',function(){
					sideBaropenClose();
				});
				
				function deploy() {
					sidebar();
				}

				deploy();
				

			});
		</script>

	</div>
</body>
</html>