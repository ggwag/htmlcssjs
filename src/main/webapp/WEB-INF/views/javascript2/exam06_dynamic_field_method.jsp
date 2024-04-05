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
	
		<script type="text/javascript">
			//빈 객체 생성
			const car = {};
			
			car.name = "벤츠"; //동적 속성(필드)
			console.log(car);
			
			//동적 메소드 추가
			car.start = function() {
				console.log("차를 확인한다.");
			};
			console.log(car);
			
			//메소드 호출
			car.start();
			car["start"]();
			
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