<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<Style>
.btn btn-secondary {
	float: left;
}

.seach {
	float: right;
}
</Style>
<body>
<c:if test="${!empty rMap }">
<script>
	alert('${rMap.msg}');
	if(${rMap.cnt}==1){
		location.href="/depart/departList";
	}
</script>
</c:if>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/menu/left.jsp" />
		<div id="page-content-wrapper">
			<div class="topcon">
				<h4>부서 등록</h4>
				<a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Menu</a>
				<button class="btn btn-secondary" onclick="history.back();">Back</button>
			</div>
				<form action="/depart/departInsert" method="post">
				<table class="table table-bordered">
					<tr>
						<th>부서코드</th>
						<td><input type="text" name="diCode"></td>
					</tr>
					<tr>
						<th>부서이름</th>
						<td><input type="text" name="diName"></td>
					</tr>
					<tr>
						<th>부서설명</th>
						<td><input type="text" name="diDesc"></td>
					</tr>
					<tr>
						<td colspan="2"><button id="diadd" onclick="diaddRow()">부서등록</button></td>
					</tr>
				</table>
				</form>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/menu/bottom.jsp" />