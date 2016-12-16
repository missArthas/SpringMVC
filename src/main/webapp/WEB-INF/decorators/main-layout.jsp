<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

<title>recommendDemo</title>
<meta name="description" content="">
<meta name="author" content="">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen"
	href="<c:url value='/resources/css/bootstrap.min.css'/>">
<link rel="stylesheet" type="text/css" media="screen"
	href="<c:url value='/resources/css/font-awesome.min.css' />">

	<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
	<link rel="stylesheet" type="text/css" media="screen"
		  href="<c:url value='/resources/css/smartadmin-production-plugins.min.css' />">
	<link rel="stylesheet" type="text/css" media="screen"
		  href="<c:url value='/resources/css/smartadmin-production.min.css' />">
	<link rel="stylesheet" type="text/css" media="screen"
		  href="<c:url value='/resources/css/smartadmin-skins.min.css'/> ">
	<link rel="stylesheet" type="text/css" media="screen"
		  href="<c:url value='/resources/css/smartadmin-rtl.min.css'/> ">

<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">


	<script type="text/javascript"
			src="<c:url value='/resources/js/jquery.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/jqueryui/jquery-ui.min.js'/>"></script>
	<script type="text/javascript" 
		src="<c:url value='/resources/js/jqueryui/jquery-ui.js'/>"> </script>
</head>

<body>
	<header id="header">
		<!-- end pulled right: nav area -->
		<c:import url="/WEB-INF/views/tags/navbar.jsp" />
	</header>

	<aside id="left-panel">
		<c:import url="/WEB-INF/views/tags/menu.jsp" />
	</aside>




	<div id="main" role="main">
		<decorator:body />
	</div>

</body>

</html>
