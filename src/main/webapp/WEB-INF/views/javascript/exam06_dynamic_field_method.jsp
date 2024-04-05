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
			const car = {};
			//car = {}; 새로운 객체의 번지가 바뀌어서 이건 안됨					
			car.name = "그랜저"; 	//어떻게 쓸 수 있지????? 이상하다 동적으로 출력
								//동적 속성(필드) 추가  객체의 번지가 저장되는거지 객체번지가 바뀌는건 아니다
			console.log(car);  	//객체 출력 가능
			//동적 메소드 추가 ? 어떻게?
			car.start = function() {
				console.log("시동을 건다.");
			};
			console.log(car);
			//메소드 호출
			car.start();
			car["start"](); 	//이게 된다? 가능하다.. 잘쓰이진 않음
		</script>
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam06_dynamic_field_method</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>