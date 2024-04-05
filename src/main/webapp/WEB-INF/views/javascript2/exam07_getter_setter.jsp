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
			const car = {
				name: "audi",
				price: 800000000,
				speed: 250,
				start: function() {
					console.log("출발합니다.");
				},
				//speed값 mile -> km으로 바꾸기
				set kmSpeed(meter) {
					this.speed = meter/0.621371;
				},
				
				get kmSpeed() {
					return this.speed * 0.621371;
				},
			};
			
			//setter 호출
			car.kmSpeed = 60;
			
			console.log("현재속도(km/h): ",car.kmSpeed);
		</script>
	
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam07_getter_setter</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>