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
		//클래스(설계도) 선언
		class Car {			
			//생성자(필드 선언과 초기화) js에서는 필드없음
			constructor() { //자바에선 클래스이름으로 했는데 여기선 constructor 키워드 생성자로 해야함
				//필드 선언과 초기화
				this.name = "그랜저";
				this.price = 50000000;
				
			}
			//메소드
			start() {
				console.log(this.name+ "시동을 겁니다.");
			}
			
			setPrice(price) {
				this.price = price; //무조건 this가 있어야함 (문법이기 때문)
				
			}
		}
			
			class Person{
				constructor(name, age) {
					this.name= name;
					this.age= age;
				}
			}
		
		//객체 생성
		const myCar = new Car();
		const youCar =new Car();
		
		console.log(myCar.name);
		console.log(myCar.price);
		myCar.start();
		myCar.setPrice(60000000);
		
		
		const me = new Person("홍길동" , 30);
		const you = new Person("감바자" ,  27);
		console.log(me.name, me.age)
		console.log(you.name, you.age);
		me.name="홍길길";
		me.age = 25;
		console.log(me);
		you.name ="박바자";
		you.age = 80;
		console.log(you);
	</script>
		
		

	</head>

	
	<body>
		<div class="card">
			<div class="card-header">exam09_class</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>