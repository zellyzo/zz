<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>업로드테스트</title>
</head>
<body>
	<form action="/fu/upload" method="post" enctype="multipart/form-data">
		이름 : <input type="text" name="upName"><br>
		성별 : <select name="upTrans">
				<option value="1">남</option>
				<option value="2">여</option>
			   </select><br>
		나이 : <input type="number" name="upAge"><br>
		생일 : <input type="date" name="upBirth"><br>
		취미 : 영화<input type="checkbox" name="upHobby" value="movie"><br>
		소개 : <br><textarea name="upDesc"></textarea><br>
		파일 : <input type="file" name="upFile"><br><br><br>
		<button>파일전송</button>
	</form>
</body>
</html>