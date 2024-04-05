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
			console.log(Math.ceil(2.4)); //3
			console.log(Math.floor(2.7)) //2
			console.log(Math.round(3.7)) //4
			console.log(Math.pow(2,4))   //16
			
			//주사위 눈 뽑기
			var num = Math.floor(Math.random() * 6) + 1;
			var num2 = Math.ceil(Math.random() * 6);
			
			console.log(num);
			console.log(num2);
		</script>
	
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam15_math</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>