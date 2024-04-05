<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<h4>exam02_element_attribute</h4>
	<hr/>
	
	<p>
				<!-- 절대경로 사용 -->
		<img src="http://localhost:8080/htmlcssjs/resources/image/photos/photo1.jpg"
		width="200"/>
				<!-- 절대경로 사용 -->
		<img src="/htmlcssjs/resources/image/photos/photo2.jpg"
		width="200"/>
				<!-- 상대경로 사용 -->
		<img src="../resources/image/photos/photo19.jpg"
		width="200"/>
	</p>
	
	<p>
		<form>
			<p>
				<label for="userId">아이디</label>
				<input type="text" id="userId"/>
			</p>
		</form>
	</p>
	
	<p>
			<p>
				<label for="userPassword">비밀번호</label>
				<input type="password" id="userPassword"/>
			</p>
	</p>
	
	<p>
		<input type="submit" value="로그인"/>
		<input type="reset" value="다시 작성"/>
	</p>
	
	
</body>
</html>
	