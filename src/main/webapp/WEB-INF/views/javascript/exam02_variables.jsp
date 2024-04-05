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
					//변수를 선언하는 3가지 방법
					var var1 = 1; 				//전역변수
					let var2 = 1.0;				//전역변수 어디서든 쓸 수 있다.
					const var3 = "abc";			//전역변수
					
					//콘솔에 변수값 출력
					console.log("var1: ", var1);
					console.log("var2: ", var2);
					console.log("var3: ", var3);
					console.log("");

					
		</script>
		
		<script>
				//함수 선언
				function fun1() {
				var var4 = 10;				//지역변수(함수 레벨) var는 함수레벨
				let var5 = 10.0;			//지역변수(블록 레벨) let,const는 블록 레벨
				const var6 = "ghi";			//지역변수(블록 레벨)
				
					if(true) {			
					var var7 = 100;  		//지역변수(함수레벨)
					let var8 = 100.0;		//지역변수(블록레벨)
					const var9 = "jhi"; 	//지역변수(블록레벨) //블록 안에서만 사용가능
					//-------------------------- 이 자리에 사용할 수 있는 변수는 몇개?
					console.log("var1:", var1);
					console.log("var2:", var2);
					console.log("var3:", var3);
					console.log("var4:", var4);
					console.log("var5:", var5);
					console.log("var6:", var6);
					console.log("var7:", var7);
					console.log("var8:", var8);
					console.log("var9:", var9);
					condole.log("");
					//--------------------------
				}
					//-------------------------- 이 자리에 사용할 수 있는 변수는 몇개?
					console.log("var1:", var1);
					console.log("var2:", var2);
					console.log("var3:", var3);
					console.log("var4:", var4);
					console.log("var5:", var5);
					console.log("var6:", var6);
					console.log("var7:", var7);
					console.log("var8:", var8);
					console.log("var9:", var9);
					condole.log("");
					//--------------------------
					
			}
				
				
				function fun2() {
					//-------------------------- 이 자리에 사용할 수 있는 변수는 몇개?
					
					//console.log("var4:", var4);  //지역변수를 벗어나서 사용할 수 없다
					console.log("var1:", var1);
					console.log("var2:", var2);
					console.log("var3:", var3);
					/* console.log("var4:", var4);
					console.log("var5:", var5);
					console.log("var6:", var6);
					console.log("var7:", var7);
					console.log("var8:", var8);
					console.log("var9:", var9); */
					condole.log("");
					//--------------------------
					
					
				}
			//함수 호출
			fun1();
			fun2();
		</script>		
		
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam02_variables</div>
			<div class="card-body">
				
			</div>		  			 
	    </div>
	</body>
</html>