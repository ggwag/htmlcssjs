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
			//객체 생성과 클래스 선언
			class Car {
				constructor(name = "그랜저", price=50000000){
					this.name  = name;
					this.price = price;
				}
				start() {
					console.log(this.name + "시동을 겁니다.");
					
				}
				setPrice(price) {
					this.price = price;
				}
			}
			
			//상속
			class SportsCar extends Car {
				constructor(name = "포르쉐", price=500000000, cc=3000) {
					super(name,price);
					this.cc = cc;
				}
				fastRun() {
					console.log("빠르게 달립니다.");
				}
				//재정의
				start() {
					console.log(this.name + " 와왕 겁니다."); //재정의 된게 호출
					
				}
			}
			
			//자식 객체 생성
			const myCar = new SportsCar("람보르기니",800000000);
			console. log(myCar.name);
			console. log(myCar.price);
			console. log(myCar.cc);
			myCar.start();
			myCar.setPrice(800000000);
			myCar.fastRun();
		</script>
	
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam11_inheritance</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>