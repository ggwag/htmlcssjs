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
				//new 생성자 만들기~
				//객체를 초기화 하는 생성자 정의
				function Car() { //실행문이기 때문에 , 가 들어가지 않음    자소서 같음(양식,형식은 같으나 자소서의 내용은 다름)
					this.name = "그랜저";    //일반 함수면 this 사용X 
					this.price = 50000000;  //객체가 있다는 전제 하에 객체를 초기화할 목적으로 생성자 함수 사용
					this.start = function() { //var name = 일반 함수
						console.log("시동을 겁니다.");
					};
				}				
				//생성자 하나 더 만들기
				function Person(name, age) { //매개변수가 있는 생성자
					this.name = name;
					this.age = age;
				}			
				//객체 생성 생성자 조건: this.XXX    new연산자와 함께 호출
				const myCar = new Car();
				console.log(myCar.name);
				console.log(myCar.price);
				myCar.start();
				
				//생성자 호출
				const my = new Person("홍길동", 30);
				const you = new Person("감자바", 27);
				console.log(my);
				console.log(you);
			</script>
	
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam08_function_constructor</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>