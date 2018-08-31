<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<Style>
.btn btn-secondary {
	float: left
}

.seach {
	float: right
}
</Style>
<body>
<div id="wrapper">
<jsp:include page="/WEB-INF/views/menu/left.jsp" />
	<div id="page-content-wrapper">
		<div class="topcon">
				<h4>사원 관리</h4>
				<a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Menu</a>
				<button class="btn btn-secondary" onclick="history.back();">이전페이지</button>
				<div class=seach style="margin: 5px;">
					<select name="scType">
						<option value="liName">레벨명</option>
						<option value="liDesc">레벨설명</option>
					</select> : <input type="text" name="scText" onkeyup="checkEnter(event)">
					<button onclick="searchLevel()">검색</button>
				</div>
			</div>

			<table class="table table-bordered table-hover">
			</table>
</div>
</div>
<jsp:include page="/WEB-INF/views/menu/bottom.jsp" />