<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<style>
</style>
<body>
<div id="wrapper">
<jsp:include page="/WEB-INF/views/menu/left.jsp" />
	<div id="page-content-wrapper">
		<div class = "topcon">
			<div>
			<h3> ERP System </h3>
			<a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Menu</a>
			<button class="btn btn-secondary" onclick="history.back();">이전페이지</button>
			</div>
		</div>
</div>
</div>
<jsp:include page="/WEB-INF/views/menu/bottom.jsp" />