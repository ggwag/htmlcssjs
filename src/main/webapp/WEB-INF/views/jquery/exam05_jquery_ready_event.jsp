<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		
		<!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<!-- jQuery 외부 라이브러리 설정 -->	
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		
		<!-- 사용자 정의 자바스크립트 -->
		<script>
			console.log("해석 전 img의 길이: ",$("img").length);  //
		
			function loadCompleted() {
				console.log("모든 html 렌더링 하는 자원이 다운로드 완료됨");
				console.log("모든 자원이 다운로드 완료된 후: ",$("img").length);
				//다 다운로드 받으면 자동으로 load 이벤트가 발생 (브라우저 해석시간과 자원 다운로드 완료시간은 다르다.)
				//load 이벤트 ready 이벤트 두개가 있음 load:     ready: 
				// 도큐먼트 객체를 제이쿼리 객체로 바꿈(랩핑)  
				$(document).ready(function() {
					console.log("HTML 해석이 완료됨1");
					console.log("해석 후 img의 길이: ",$("img").length);
				});
				
				$(function() {
					console.log("HTML 해석이 완료됨2");
					console.log("해석 후 img의 길이2: ",$("img").length);
				});
				
				$(() => {
					console.log("HTML해석 완료3");
					console.log("해석 후 img의 길이3:" ,$("img").length);
				});
				
			}
		</script>
	</head>
	
	<body onload="loadCompleted()">
		<div class="card">
			<div class="card-header">exam05_jquery_ready_event</div>
			<div class="card-body">
				<img src="/htmlcssjs/resources/image/photos/photo1.jpg" width="50" height="50" class="me-2">
				<img src="/htmlcssjs/resources/image/photos/photo2.jpg" width="50" height="50" class="me-2"/>
				<img src="/htmlcssjs/resources/image/photos/photo3.jpg" width="50" height="50" class="me-2"/>
				<img src="/htmlcssjs/resources/image/photos/photo4.jpg" width="50" height="50" class="me-2"/>
				<img src="/htmlcssjs/resources/image/photos/photo5.jpg" width="50" height="50" class="me-2"/>
				<img src="/htmlcssjs/resources/image/photos/photo6.jpg" width="50" height="50" class="me-2"/>
				<img src="/htmlcssjs/resources/image/photos/photo7.jpg" width="50" height="50" class="me-2"/>
				<img src="/htmlcssjs/resources/image/photos/photo8.jpg" width="50" height="50" class="me-2"/>
				<img src="/htmlcssjs/resources/image/photos/photo9.jpg" width="50" height="50" class="me-2"/>
				<img src="/htmlcssjs/resources/image/photos/photo10.jpg" width="50" height="50" class="me-2"/>
			</div>		  			 
	    </div>
	</body>
</html>