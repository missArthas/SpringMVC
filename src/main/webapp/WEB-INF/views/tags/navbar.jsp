<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<div id="logo-group">

	<!-- PLACE YOUR LOGO HERE -->
	<span id="logo"> <img src="<c:url value='/resources/img/logo.jpg'/>"
		alt="SpringMVC Template">
	</span>
</div>

<div class="pull-right">
	<div>
	欢迎：<sec:authentication property="principal.username" /><a href="#">注销</a>
	</div>
</div>
