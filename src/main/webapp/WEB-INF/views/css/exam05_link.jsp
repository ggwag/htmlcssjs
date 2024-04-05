<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name = "viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<style type="text/css">
		a{
			text-decoration: none;
		}
		
		a:visited {
			color: gold;
		}
		
		a:hover {
			color: chocolate;
			text-decoration: underline;
		}
		
		a:active {
			color: blue;
		}
		
		a.btn {
			border: 1px solid lightgray;
			padding: 5px;
			background-color: #ffff00;
		}
		
		a.btn:hover {
			background-color: red;
			color: black;
		}			
		a.btn:active {
			background-color:#00ff00;
		}
	</style>
	</head>
	
	<body>
		<h4>exam05_link</h4>
		<hr/>
		
		<a href="https://www.w3schools.com">w3schools</a>
    	<a href="https://www.apache.org">apache</a>
    	<a class="btn" href="https://www.apache.org">apache</a>
		
		
	</body>
</html>