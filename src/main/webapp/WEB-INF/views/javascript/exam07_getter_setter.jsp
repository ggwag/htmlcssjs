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
			const car = { //세터 게터 만들기
					name:"그랜저",
					price: 5000,
					speed: 100, //mile
					start: function() {
						console.log("시동을 겁니다.");
					},
					//메소드를 선언했는데 getter setter?
					//Setter 선언
					set kmSpeed(meter) {//메소드 선언같음 set setter매개변수를 받는다
						//mile -> km 로 바꾸기
						this.speed = meter/0.621371;
					},
					//Getter 선언
					get kmSpeed() {//메소드긴 한데 앞에 get
								   //set get은 동일한 메소드이름을 가져야한다.
						return this.speed * 0.621371;
					},
			};
			//Setter 호출
			car.kmSpeed = 60; //마일 단위로 바꾸기 대입연산자의 왼쪽에 오면 세터가 온다.
							  //대입연산자를 사용하지 않으면 게터가 온다. 
							  //속성값을 불러오는것 처럼 보이지만 세터가 불린다.
							  
			//Getter 호출
			console.log("현재속도(km/h):" , car.kmSpeed);
			//속성 값을 읽는것 처럼 보이지만 사실은 게터를 불러오는 것
			//게터 세터를 속성(필드)처럼 쓰는이유 : 
			//추가적인 연산은 속성이 아니고 메소드이기 때문에 메소드로 작성 하되, 속성처럼 사용하는게 편리해서
			//추가적인 연산작업을 숨기기 위해?
			
			
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