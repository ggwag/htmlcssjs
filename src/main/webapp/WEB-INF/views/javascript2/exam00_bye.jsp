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
			var var1 = {
				company: "토트넘",
				name: "손흥민",
				price: 3000000,
				goal: "시즌 14호",
				rank: "6위",
				speed: 0,
				
					
			
				run() {
					this.setSpeed(33);
					console.log(this.company + "의" +
							this.name + "이" +
							this.speed + "로 달립니다.");
				},
				
			};
			
			console.log(var1.company);
			console.log(var1.name);
			console.log(var1.price);
			console.log(var1.goal);
			console.log(var1.rank);
			console.log("");
			
			console.log(var1["name"]);
			console.log(var1["company"]);
			console.log(var1["goal"]);
			
			var1.rank = "5위";
			var1.goal = "13호";
			var1.price= 90000000;
			console.log(var1.rank);
			console.log(var1.goal);
			console.log(var1.price);
			console.log("");
			

			
		</script>
		
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam00_bye</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>