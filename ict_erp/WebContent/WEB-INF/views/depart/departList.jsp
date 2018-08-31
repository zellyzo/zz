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
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/menu/left.jsp" />
		<div id="page-content-wrapper">
			<div class="topcon">
				<h4>부서 관리</h4>
				<a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Menu</a>
				<button class="btn btn-secondary" onclick="history.back();">Back</button>
				<div class=seach style="margin: 5px;">
					<select name="scType">
						<option value="diCode">부서코드</option>
						<option value="diName">부서명</option>
					</select> : <input type="text" name="scText" onkeyup="checkEnter(event)">
					<button onclick="searchLevel()">검색</button>
				</div>
			</div>

			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>부서코드</th>
						<th>부서명</th>
						<th>부서설명</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${diList}" var="di">
						<tr>
							<td>${di.diNum}</td>
							<td>${di.diCode}</td>
							<td>${di.diName}</td>
							<td>${di.diDesc}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="btns">
				<button data-page="/depart/departInsert">부서등록</button>
			</div>
			<div class="page" style="text-align: center">
				<jsp:include page="/WEB-INF/views/menu/pagination.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<script>
		window.onload = function() {
			var btns = document.querySelectorAll('button[data-page]');
			for (var i = 0, max = btns.length; i < max; i++) {
				btns[i].setAttribute('type', 'button');
				btns[i].onclick = function() {
					location.href = this.getAttribute('data-page');
				}
			}
		}
	</script>
	<jsp:include page="/WEB-INF/views/menu/bottom.jsp" />