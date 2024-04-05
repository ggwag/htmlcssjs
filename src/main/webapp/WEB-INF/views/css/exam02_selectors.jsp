<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name = "viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	
	
	<!-- internal css -->
	<style type="text/css">
		*{
		 	text-align: center;
		 	color: blue;
		}
	
		div {
		 border: 1px solid red;
		 background-color:aqua;
		}
		
		#divId1 {
			 background-color:orange;
		}
		
		
		.divClass1 {
			background-color:yellow;
		}
		
		.divClass2 {
			background-color:green;
		}
		
		p, header, article {
			border: 1px solid orange;
			text-align: right;
			color: red;
		}
		.classA {
			background-color: gray;
		}
	</style>
	</head>
	<body>
		<h4>exam02_selectors</h4>
		<hr/>

		<!-- inline css -->		
		<div>content1</div>
		<div id="divId1">content2</div>
		<div class="divClass1">content3</div>
		<div class="divClass1">content4</div>
		<div class="divClass2">content5</div>
		<div class="divClass2">content6</div>
		
		<p>content7</p>
		<header>content8</header>
		<article>content9</article>
		
		<p class="classA">content10</p>
		<div class="classA">content11</div>
	</body>
</html>