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
			//객체를 초기화 하는 생성자 정의
			function Car() {
				this.name = "그랜저";
				this.price = 50000000;
				this.start = function() {
					console.log("전원을 켠다.");
				};
			}
			
			//생성자 하나 더 만들기
			function Person(name, age) {  //매개변수가 있는 생성자
				this.name = name;
				this.age = age;   
			}
			
			const myCar = new Car();
			console.log(myCar.name);
			console.log(myCar.price);
			myCar.start();
			
			const my = new Person("김",20);
			const you = new Person("이",40);
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