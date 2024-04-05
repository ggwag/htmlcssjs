<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
		<script>
			//정규 표현식 작성 방법
			// /^ : 여기서부터 시작  ...  $/ : 여기서 끝
			
			//전화번호 유효성 검사	
			var tel = "010-1454-1234-123";
			const pattern = /^(010|011)-\d{3,4}-\d{4}$/; //객체가 가지고 있는 test라는 메소드 호출
			console.log(pattern.test(tel));
			
			//이메일 유효성 검사
			var email = "fall@naver.com";
			const emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			console.log(emailPattern.test(email));
			
		</script>
	
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam18_regexp</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>