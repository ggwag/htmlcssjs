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
		 	//-----------------------------------
			//함수 선언
			function fun1() {					//함수 명과 동시에 변수 명
				console.log("fun1() 실행 함수명과 동시에 변수 명이다");     //function함수 다음 이름 선언
			}
			//함수 호출 	이거 클래스임??
			fun1();
			//-----------------------------------
			
			//함수 선언
			var fun2 = function() {
			//함수 이름이 없다? fun2가 함수이름이 됨 함수도 객체. 객체가 저장되면 번지가 저장됨
				console.log("fun2() 함수도 객체다");        
			};   // 실행문이기 때문에 뒤에 ;(세미콜론)이 와야함
			//함수 호출
			fun2();
			
			//함수 선언   화살표 함수(arrow function) 선언
			var fun3 = () => {   //변수선언이면서 화살표 함수를 대입했기 때문에 실행문
				console.log("fun3() 실행문이면 ; 와야겠지?") //실행문이 하나일 경우엔 중괄호 삭제 가능
			};   // 실행문 이기 때문에 ;(세미콜론) 와야함
			
			//함수 호출
			fun3();
			//-------------------------------------
			
			//함수 대입과 호출
			var fun4 = fun3;  //번지가 저장된 함수 객체를 다시 fun4에 넘겨준다(fun4도 객체라). 
			fun4();
			//-------------------------------------
			//매개 변수가 있는 함수
			function fun5(arg1,arg2) {     //function은 var let 등등이 안들어감
				console.log("fun5() 실행");
				console.log("arg1:매개변수가 있는 함수",arg1);
				console.log("arg2: function은 var let 등이 안들어가",arg2);
			}
			fun5(100,"이렇게 들어온다고? abc");
			fun5(10);   //값 하나만 넣어도 arg1 나옴 이게 왜? arg2값은 undefined 나옴 기본값이 있다면 기본값을 받는다.
			//--------------------------------------
			//화살표 함수 선언
			console.log("");
			var var6 = (arg1, arg2) => {
				console.log("fun6() 실행");
				console.log("arg1: 화살표 객체",arg1);
				console.log("arg2: 작은따옴표 큰따옴표 차이알기",arg2);
			};
			//호출
			var6('abc' , "def"); //자바스크립트는 char 타입 없어서 ''를 해도 문자열 ""를 해도 문자열
			
			var var7 = (arg1) => console.log("arg1:실행문이 하나면? {}생략", arg1); //실행문 하나면 {} 중괄호 생략가능
				var7();			
			var var8 = arg1 => console.log("arg1:매개변수가 하나면? ()생략", arg1);	//매개변수가 하나면 () 괄호 생략가능 화살표 함수
				var8();			
			//--------------------------------------
			//리턴값이 있는 함수
			function fun9(x,y){
				let result = x + y;
				return result;
			}
			const fun10 = (x, y) => { return x + y; };  //변수값 대입하는 실행문이니 ; 들어가야함 화살표 함수에서 return문 하나밖에 없으면 중괄호랑 리턴 생략
			const fun11 = (x, y) => x + y;
			//호출
			var result1 = fun9(10, 20);
			var result2 = fun10(20, 30);
			var result3 = fun11(40, 50);
			console.log("result1: ",result1);
			console.log("result2: ",result2);
			console.log("result3: ",result3);
			
		</script>		
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam04_function</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>