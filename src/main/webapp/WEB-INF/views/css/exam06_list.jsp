<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name = "viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
		<style type="text/css">
			* {
				margin: 0px;
				padding: 0px;	
			}
			
			.menu{
				magin-top:20px;
				padding: 10px;
				list-style: none;
			}
			
			.menuitem{
				cursor: pointer;
				/* border: 1px solid black; */
				display: inline-block;
			}
			
			.mi{
				text-decoration: none;
				color: pink;
			}
		</style>
	</head>
		
		
	
	<body>
		<h4>exam06_list</h4>
		<hr/>
		
		
	 <ul class="menu">
        <li class="menuitem">Menu1</li>
        <li class="menuitem">Menu2</li>
        <li class="menuitem">Menu3</li>
        <li class="menuitem">Menu4</li>
        <li class="menuitem">Menu5</li>
     </ul>
     
     <br/><br/>
     
     <div class="menu">
        <a class="mi" href="#">Menu1</a>
        <a class="mi" href="#">Menu2</a>
        <a class="mi" href="#">Menu3</a>
        <a class="mi" href="#">Menu4</a>
        <a class="mi" href="#">Menu5</a>
     </div>
	</body>
</html>