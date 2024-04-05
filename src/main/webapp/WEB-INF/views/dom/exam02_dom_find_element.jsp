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
			//특정 엘리먼트를 찾아서 엘리먼트 정보를 읽기
			//데이터가 저장된 메모리에 객체가 어디있는지 찾아야한다
			//getElementById()	Returns the element that has the ID attribute with the specified value
			function findElementById() {
				//방법1 : getElementById()	Returns the element that has the ID attribute with the specified value
				var el_p1 = document.getElementById("p1");
				console.log(el_p1);
				
				//방법2 : querySelector()	Returns the first element that matches a specified CSS selector(s) in the document
				el_p1 = document.querySelector("#p1"); //css 선택자 문법을 어떻게 작성했느냐에 따라 자유롭게 가능 	
				console.log(el_p1);
			}
			
			function findElementByClass() {
				//방법1
				var el_class1 = document.getElementsByClassName("class1");
				//HTMLCollection 타입으로 리턴함
				//class는 빈 공백 구분해서 여러개 지정 가능 하나 이상의 엘리먼트가 적용될 수 있어서 이름 옆에s
				console.log(el_class1);
				console.log(el_class1[0]);
				//컬렉션 타입이지만 (인덱스 출력같지만) 배열출력 느낌임 배열은 아니지만 배열처럼 사용. 
				for(var el of el_class1) { 
				//컬렉션타입 (내부적으로 인덱스로 관리하기 때문에 for문 사용가능)
					console.log(el);
				}
				console.log("----------줄바꿈----------");
				
				//방법2
				el_class1 = document.querySelectorAll(".class1"); // .이 들어가야함
				//NodeList 타입으로 리턴함
				//쿼리 셀렉터는 조건에 맞는 태그를 '하나'만 가져옴 첫번 째로 찾은걸 리턴함
				//두개 이상을 가져오려면 All을 붙여야함 .querySelectorAll 자주 사용.
				console.log(el_class1);
				console.log(el_class1[0]);
				for(var el of el_class1) { //배열타입은 아니지만 배열처럼 쓰면 됨
						console.log(el);
					}
			}
				
			function findElementByTag() {
				//방법1
				var el_p = document.getElementsByTagName("p");
				for(var el of el_p) { 
					console.log(el);
				}
				console.log("-----------줄바꿈----------")
				//방법2
				el_p= document.querySelectorAll("p");
				for(var el of el_p) { 
					console.log(el);
				}
			}
			
			function findElementByChecked() {
				var el_checked = document.querySelectorAll("[name=skill]:checked") //속성의
				for(var el of el_checked) { 
					console.log(el);
				}
				
			}
			
			
		</script>
	
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam02_dom_find_element</div>
			<div class="card-body">
				
				<button onclick="findElementById()" class="btn btn-primary btn-lg">ID로 찾기</button>
            	<button onclick="findElementByClass()" class="btn btn-primary btn-lg">Class로 찾기</button>
            	<button onclick="findElementByTag()" class="btn btn-primary btn-lg">Tag로 찾기</button> <!-- 태그는 잘 쓰지않음 -->
            	<button onclick="findElementByChecked()" class="btn btn-primary btn-lg">체크된 것만 찾기</button>
            	<hr/>
            	<div class="d-flex"> <!-- p태그는 블록요소  d-flex-->
               		 <p id="p1" class="border bg-success" style="width: 100px; height: 100px;"></p>
               		 <p class="class1 border bg-danger" style="width: 100px; height: 100px;"></p>
               		 <p class="class1 border bg-info" style="width: 100px; height: 100px;"></p>
            	</div>
            	<hr/>
            	<div class="d-flex">
                	<div class="me-3"><input type="checkbox" name="skill" value="java"/>java</div>
               	    <div class="me-3"><input type="checkbox" name="skill" value="javascript"/>javascript</div> 
                	<div class="me-3"><input type="checkbox" name="skill" value="vue"/>vue</div> 
            	</div>
			</div>		  			 
	    </div>
	</body>
</html>