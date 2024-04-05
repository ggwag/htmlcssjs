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
		
			//산술 연산자
			var var1 = 2 ** 3;
			console.log("var1:", var1);
			console.log("");
			
			//비교 연산자
			console.log(3 == "3"); 			//true
			console.log(3 ==="3"); 			//false
			console.log(3 != "3"); 			//false
			console.log(3 !== "3"); 		//true
			console.log("");
			//논리 연산자
			var var2 = true;
			var var3 = false;
			
			console.log(var2 && var3);		//false      대부분 첫번째 값이 boolean
			console.log(var2 && "홍길동");	//홍길동
			console.log(var2 && "김나박이");  //김나박이
			console.log(var3 && "김나박이");  //false
			
			console.log("");
			console.log(var2 || var3);  	//앞이 true면 뒤는 무조건 true
			console.log(var2 || "홍길동");   	//앞이 true면 뒤는 무조건 true
			console.log(var3 || "홍길동");   	//앞이 false면 뒤에꺼값이 답
			
			console.log("");
			console.log(!var3);     		//true
		</script>		
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam03_operations</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>