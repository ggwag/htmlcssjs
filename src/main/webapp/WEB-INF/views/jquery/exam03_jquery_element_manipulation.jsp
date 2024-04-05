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
	
		<!-- jQuery 외부 라이브러리 설정 -->	
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	
		<script>
			
			function changeContent() {
				//let el_div1 = document.querySelector("#div1");
				//let el_div1 = $("#div1"); //변수로 받아도 되지만 바로 변수로 써도 됨
				
				$("#div1").html("<img src='/htmlcssjs/resources/image/photos/photo1.jpg' width='150'/>"); //문자열로 작성하기
				//			//이미지 태그를 넣어준다. <img src를 쓸때 큰따옴표 있어서 작은 따옴표 사용함
				
			}
				
			function appendContent() {
				//기존에 있던 내용 뒤에 내용 추가
				const el_img = "<img src='/htmlcssjs/resources/image/photos/photo18.jpg' width='150'/>"
				//직접 넣어도 되고 변수로 받아서 넣어도 된다.
				$("#div1").append(el_img);
			}
			
			function deleteContent() {
				//let el_div1 = document.querySelector("#div1");
				let el_div1 = $("#div1");
				//기존 내용을 모두 삭제한다. 내용을 아무것도 안주면 됨 /다 삭제
				//el_div1.innerHTML = ""; 
				//$("#div1").html("");  //= empty()
				
				//맨 뒤에 있는 엘리먼트 삭제하기 자식을 지우는게 아니다
				$("#div1").find("img:last-child").remove(); //마지막 이미지 객체를 삭제한다.
				//현재 선택되어 있는 #div1 자체를 지운다
				
				
			}
			
			function changeCss() {
				//var jq_img1 = $("#img1");
				$("#img1").css("width","100px"); //스타일을 넣어줄때는 가능하면 단위를 표시해서 넣어주는게 좋다(px) 
				$("#img1").css("height","100px");
				
				//style="border-radius:50px; border-width:5px; border-color:red; border-style:solid"
				$("#img1").css("border-radius","60px"); // border-radius 대시가 들어갈 수 없다 대신 캐멀스타일로 적용
				$("#img1").css("border-width", "5px");
				$("#img1").css("border-color","orange");
				$("#img1").css("border-style" ,"solid");
			}
			
			function changeAttribute() { 
				//var el_img2 = $("#img2"); //둘 중 하나를 쓰면 된다.
				$("#img2").attr("src","/htmlcssjs/resources/image/photos/photo2.jpg");
				//el_img2.setAttribute("src","/htmlcssjs/resources/image/photos/photo2.jpg");
				
			}
			
			
		</script>
	
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam03_jquery_element_manipulation</div>
			<div class="card-body">
			
				<!-- 카드 안에 카드 넣기 -->
				<div class="card">
					<div class="card-header">엘리먼트 변경,추가 및 삭제</div>
					<div class="card-body">
						<button onclick= "changeContent()" class="btn btn-primary btn-lg">변경</button>
						<button onclick= "appendContent()" class="btn btn-primary btn-lg">추가</button>
						<button onclick= "deleteContent()" class="btn btn-primary btn-lg">삭제</button>
						<hr/>
						<div id="div1"></div>
					</div>		  			 
		    	</div>
		    	
		    	<div class="card">
					<div class="card-header">스타일 변경</div>
					<div class="card-body">
						<button onclick= "changeCss()" class="btn btn-primary btn-lg">스타일 변경</button>
						
						<hr/>
						<div id="div2">
							<img id="img1" src="/htmlcssjs/resources/image/photos/photo19.jpg" width="150"/>
							<img class="rounded-circle" 
							     src="/htmlcssjs/resources/image/photos/photo1.jpg"
								 width ="100" height="100"/>
						</div>
					</div>		  			 
		    	</div>
		    	
		    	<div class="card">
					<div class="card-header">속성값 변경</div>
					<div class="card-body">
						<button onclick= "changeAttribute()" class="btn btn-primary btn-lg">속성값 변경</button>
						
						<hr/>
						<div id="div3">
							<img id="img2" 
								 src="/htmlcssjs/resources/image/photos/photo6.jpg"
								 class = "rounded=circle"
								 width="100" height="100"/>
						</div>
					</div>		  			 
		    	</div>
				
			</div>		  			 
	    </div>
	</body>
</html>