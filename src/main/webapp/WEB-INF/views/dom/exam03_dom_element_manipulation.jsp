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
			//카드 안에 카드 넣기 방법
			function changeContent() {
				let el_div1 = document.querySelector("#div1");
				//가장 쉬운방법: 기존 내용을 대체한다.
				el_div1.innerHTML = "<img src='/htmlcssjs/resources/image/photos/photo1.jpg' width='150'/>"
									//이미지 태그를 넣어준다. <img src를 쓸때 큰따옴표 있어서 작은 따옴표 사용함
				
			}
				
			function appendContent() {
				let el_div1 = document.querySelector("#div1");
				//새로운 엘리먼트 생성
				//직접 엘리먼트를 만드는 방법 방법은 도큐먼트가 갖고있다
				//createElement(XXX)	Creates an Element node 
				const el_img = document.createElement("img");
				el_img.setAttribute("src","/htmlcssjs/resources/image/photos/photo19.jpg");
				el_img.setAttribute("width","150");
				//내용을 추가하는 메소드 appendChild() append: 추가
				//기존 내용 뒤에 추가
				el_div1.appendChild(el_img);
			}
			
			function deleteContent() {
				let el_div1 = document.querySelector("#div1");
				//기존 내용을 삭제한다. 내용을 아무것도 안주면 됨 /다 삭제
				//el_div1.innerHTML = "";
				
				//맨 뒤에 있는 엘리먼트 삭제하기 이미지를 갖고 있는 부모로 메소드 사용
				//맨 뒤에 있는 자식에 대한 참조를 어떻게 해야할까
				//맨 뒤에 있는 자식을 찾는 방법 lastElementChild
				//맨 앞에 있는 자식을 찾는 방법 firstElementChild
				el_div1.removeChild(el_div1.firstElementChild);
			}
			
			function changeCss() {
				var el_img1 = document.querySelector("#img1");
				el_img1.style.width  = "100px"; //스타일을 넣어줄때는 가능하면 단위를 표시해서 넣어주는게 좋다(px) 
				el_img1.style.height = "100px";
				//style="border-radius:50px; border-width:5px; border-color:red; border-style:solid"
				el_img1.style.borderRadius="60px"; // border-radius 대시가 들어갈 수 없다 대신 캐멀스타일로 적용
				el_img1.style.borderWidth ="5px";
				el_img1.style.borderColor ="";
				el_img1.style.borderStyle ="solid";
			}
			
			function changeAttribute() { 
				var el_img2 = document.querySelector("#img2"); //둘 중 하나를 쓰면 된다.
				el_img2.src = "/htmlcssjs/resources/image/photos/photo2.jpg";
				//el_img2.setAttribute("src","/htmlcssjs/resources/image/photos/photo2.jpg");
				
			}
			
			
		</script>
	
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam03_dom_element_manipulation</div>
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