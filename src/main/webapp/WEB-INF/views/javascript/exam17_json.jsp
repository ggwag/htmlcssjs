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
			//JSON 이란?-----------------------------------------------------
			//JavaScript Object Notation(자바스크립트 객체 표기)
			//{ "속성명":값 , "속성명":값, ...} JSON표기법
			//반드시 속성명은 큰 따옴표로 감싸야한다. 작은따옴표X
			//값의 타입
			//숫자 일 경우: {"price": 3000}, {"tall": 170.5}
			//문자열 일 경우: {"name": "홍길동"} <- 문자열은 반드시 큰 따옴표로 감싸야한다.
			//객체 일 경우: {"data": {"bno":1, "title":"제목"}} 객체일 경우 중괄호 하나 더 넣어서 데이터의 값으로
			//배열 일 경우: {"hobby": ["음악","게임","여행"]} //대괄호로 값을 넣어야 한다.
			//JSON 용도? : 프론트 엔드와 백엔드 사이의 데이터 전달을 위해 사용		
			//자바스크립트 객체와 JSON은 다른 것이다. JSON=문자열 자바스크립트 객체= 객체
			
			//자바스크립트를 JSON문자열로 변환시키기------------------------------------
			const person = {
					name: "홍길동",
					nation: '한국',
					age: 25,
					family: {father:"홍삼원" , mother:'정관순'},
					hobby: ["영화",'게임'],
			};			
			console.log(person);
			
			const strJson = JSON.stringify(person);
			console.log(strJson);
			//JSON 문자열을 자바스크립트로 변환시키기-----------------------------------
			const person2 = JSON.parse(strJson);
			console.log(person2);
			
		</script>
	
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam17_json</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>