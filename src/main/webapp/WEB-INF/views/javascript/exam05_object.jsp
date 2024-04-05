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
			//객체 표기법? { } //자바스크립트는 {} 객체를 표현하는 기호.
			var var1 = 3;			//number
			let var2 = "abc"; 		//string
			const var3 = () => {}; 	//function 함수 
			var var4 = {};  		//객체 object
			var var5 = [];  		//배열 
			console.log("var1타입은 머야?",typeof(var1)); //number //typeof로 변수 안에 들어가있는 타입을 찾는다
			console.log("var2타입은 머야?",typeof(var2)); //string
			console.log("var3타입은 머야?",typeof(var3)); //function
			console.log("var4타입은 머야?",typeof(var4)); //object
			console.log("var5타입은 머야? object인데 배열",typeof(var5)); //object인데 배열
			console.log("");

			//객체 생성 및 속성 정의-------------------------------
			var car = { //자동차는 객체로 만들고싶다 객체기호
				//필드(속성)
				company: "현대자동차", //필드이름  값 ,
				name: "지구공",
				price: 80000000,
				//메소드
				
			};
			//필드(속성)값 읽기
			console.log(car.company);
			console.log(car.name);
			console.log(car.price);
			console.log(car["company"]); // [] 대괄호로도 쓸 수 있다.
			console.log(car["name"]);    // 속성이름을 변수처리해야할 때가 있다.
			console.log(car["price"]);
			console.log("대괄호로 쓸 수 있다.");
			console.log("");
			
			//필드값(속성)변경
			car.company = "포르쉐";
			car["name"] = "911";
			console.log(car.company); // [] 대괄호로도 쓸 수 있다.
			console.log(car["name"]);
			console.log("");
			
			//객체의 메소드 정의---------------------------------
			car = {
					//필드(속성)
					company: "현대자동차", //필드이름  값 ,
					name: "지칠공",
					price: 77000000,
					speed: 0,
					
					//메소드
					/* run: function() {  //화살표 함수에서 this. 는 자기자신이 아님 그래서 쓰지마라
						this.setSpeed(60);
						console.log(this.company + "의" +
								this.name + "이" +
								this.speed+"로 달립니다. 반드시 this.을 붙여라");
								//자바스크립트는 자신의 필드 속성에 올때 반드시 this.을 붙여야함
					}, */
					run() {
						this.setSpeed(60);
						console.log(this.company + "의" +
								this.name + "이" +
								this.speed+"로 달립니다. 반드시 this.을 붙여라");
				 	},
					
				/* 	setSpeed: function(speed) {
						this.speed = speed;  //객체의 속성을 써야할 땐 무조건 this.
					}, */
					setSpeed(speed) {
						this.speed = speed;
					},
					
/* 					toString: function() {
						return this.company + "-" + this.name;
					}, */
					
					toString() {
						return this.company + "-" + this.name;
					},
					
					sound () {
						console.log(this.name + "빰뿌르빰"); //this. 는 윈도우 객체를 참조한다.
					},
								
					sound: () => {
						//화살표 함수는 this 가 객체 자신이 아니라 window 객체를 참조한다
						//그렇기 때문에 this를 사용하는 코드를 작성하면 안됨
						console.log("빵빵");
					},	
					
			};
			//메소드 호출
			car.run();
			var info = car.toString();
			console.log("info값: ", info);
			car.sound();

			
		</script>
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam05_object</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>