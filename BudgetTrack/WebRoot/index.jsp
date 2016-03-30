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
<base href="<%=basePath%>">
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>


<script src="<c:url value="/resources/plugins/FusionCharts_1.js" />"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.19/angular.js"></script>
<script src="<c:url value="/resources/plugins/angular-fusioncharts.min.js" />"></script>
<script src="<c:url value="/resources/plugins/angular-fusioncharts.js" />"></script>
<script src="<c:url value="/resources/js/index.js" />"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/highcharts-3d.js"></script>


<style>
.done {
	background-color: green;
}

.pending {
	background-color: red;
}
</style>
<title>indexPage</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<body ng-app="notesApp">
	<div ng-controller="MainCtrl as ctrl">
		{{ctrl.message}} AngularJS.
		<button ng-click="ctrl.changeMessage()">Change Message</button>
		<div ng-repeat="note in ctrl.not">
			<span class="label"> {{note.id}}</span> <span class="status"
				ng-bind="note.msg"></span>

		</div>
		<div ng-repeat="note in ctrl.notes"
			ng-class="ctrl.getNoteClass(note.done)">
			<span class="label"> {{note.label}}</span> <span class="assignee"
				ng-show="note.assignee" ng-bind="note.assignee"> </span>
		</div>
		<div ng-repeat="(author, note) in ctrl.notes2">
			<span class="label"> {{note.label}}</span> <span class="author"
				ng-bind="author"></span>
		</div>
		<table>
			<tr ng-repeat-start="note in ctrl.notes">
				<td>{{note.label}}</td>
			</tr>
			<tr ng-repeat-end>
				<td>Done: {{note.done}}</td>
			</tr>
		</table>
		<input type="text" ng-model="ctrl.test" /> <label>You entered
			: <span ng-bind="ctrl.testFn()"></span>
		</label>
	</div>
	<div ng-controller="subctrl as ctrl2">
		<input type="text" ng-model="ctrl2.username"> <input
			type="password" ng-model="ctrl2.password">
		<button ng-click="ctrl2.change()">Change Values</button>
		<button ng-click="ctrl2.submit()">Submit</button>

		<form ng-submit="ctrl2.submit1()">
			<input type="text" ng-model="ctrl2.username"> <input
				type="password" ng-model="ctrl2.password"> <input
				type="submit" value="Submit">
		</form>
		<form ng-submit="ctrl2.submit2()">
			<input type="text" ng-model="ctrl2.user.username"> <input
				type="password" ng-model="ctrl2.user.password"> <input
				type="submit" value="Submit">
		</form>

		<div id="container" style="height: 400px"></div>
		<div><fusioncharts 
    width="600" 
    height="400"
    type="pie3d"
    datasource="{{ctrl2.myDataSource}}"
></fusioncharts></div>
	</div>

</body>
</html>
