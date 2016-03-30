<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>SB Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="resources/bower/bootstrap/dist/css/bootstrap.min.css" />"  rel="stylesheet">
    <link href="resources/custom/login.css" rel="stylesheet" type="text/css"/>
	<!-- jQuery -->
    <script src="resources/bower/jquery/dist/jquery.min.js"></script>
	
    <!-- Bootstrap Core JavaScript -->
    <script src="resources/bower/bootstrap/dist/js/bootstrap.min.js"></script>
    
    <!-- MetisMenu CSS -->
    <!-- <link href="resources/bower/metisMenu/dist/metisMenu.min.css" rel="stylesheet"> -->

    <!-- Custom CSS -->
    <!-- <link href="resources/bower/dist/css/sb-admin-2.css" rel="stylesheet"> -->

    <!-- Custom Fonts -->
    <!-- <link href="resources/bower/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
    <!-- Metis Menu Plugin JavaScript -->
    <!-- <script src="resources/bower/metisMenu/dist/metisMenu.min.js"></script> -->

    <!-- Custom Theme JavaScript -->
    <!-- <script src="resources/bower/dist/js/sb-admin-2.js"></script> -->
<style type="text/css">
.body-backgroud-img{
	background: transparent url("resources/images/budget.png") no-repeat center center;
	width: 100%;
    height: 100%;
    background-size: cover;
}
</style>

</head>

<body class="body-backgroud-img">

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default box-shadow-div">
                    <div class="panel-heading txt-aln-ctr">
                        <h3 class="panel-title">Login to View your Budget</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="button" class="btn btn-lg btn-success btn-block box-shadow-btn" value="Login">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
