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
	href="<c:url value='/resources/css/smartadmin-skins.min.css'/> " >

<!-- SmartAdmin RTL Support  -->
<link rel="stylesheet" type="text/css" media="screen"
	href="<c:url value='/resources/css/smartadmin-rtl.min.css'/> ">
<link rel="stylesheet" href="<c:url value='/resources/js/jqueryui/jquery-ui.min.css'/> ">


<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen"
	href="<c:url value='/resources/css/demo.min.css'/> ">

<!-- FAVICONS -->
<link rel="shortcut icon" href="<c:url value='/resources/img/favicon/favicon.ico'/> "
	type="image/x-icon">
<!-- TreeView -->
<link href="<c:url value='/resources/css/treeview.css'/> " type="text/css" rel="stylesheet"></link>
<!-- text_over flow style -->
<link href="<c:url value='/resources/css/text_overflow_style.css'/> " type="text/css" rel="stylesheet"></link>
<!-- table style -->
<link href="<c:url value='/resources/css/table_style.css'/> " type="text/css" rel="stylesheet"></link>

<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">



	<script type="text/javascript"
		src="<c:url value='/resources/js/jqueryui/jquery-1.8.2.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/TreeView.js'/> "></script>
	<script type="text/javascript" 
		src="<c:url value='/resources/js/jqueryui/jquery-ui.js'/>"> </script>
<!-- 			<script type="text/javascript"
		src="<c:url value='/resources/js/jqueryui/jquery.autocomplete.js'/>"></script> -->
<!-- Startup image for web apps -->
<!-- <link rel="apple-touch-startup-image" href="<c:url value='/resources/img/splash/ipad-landscape.png'/>" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
		<link rel="apple-touch-startup-image" href="<c:url value='/resources/img/splash/ipad-portrait.png'/>" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
		<link rel="apple-touch-startup-image" href="<c:url value='/resources/img/splash/iphone.png'/>" media="screen and (max-device-width: 320px)"> -->

<!-- 	<link rel="stylesheet" type="text/css" media="screen" href="<c:url value='/resources/css/amuse/css.css'/>"> -->

</head>


<body>

	<header id="header">
		<!-- end pulled right: nav area -->
		<c:import url="/WEB-INF/views/tags/navbar.jsp" />
	</header>


	<aside id="left-panel">
		<c:import url="/WEB-INF/views/tags/menu.jsp" />
	</aside>

	<%--<div class="jumbotron">--%>
	<%--<c:import url="/WEB-INF/views/tags/banner.jsp"/>--%>
	<%--</div>--%>
	<!-- MAIN PANEL -->
	<div id="main" role="main">
		<decorator:body />
	</div>


</body>

</html>
