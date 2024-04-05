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
			//특정 엘리먼트를 찾아서 엘리먼트 정보를 읽기
			//데이터가 저장된 메모리에 객체가 어디있는지 찾아야한다
			//getElementById()	Returns the element that has the ID attribute with the specified value
			function findElementById() { //$쓰기
				
				//방법2 : querySelector()
				//비교하면서 보기 
				 //var el_p1 = document.getElementById("p1");
		         var jq_p1 = $("#p1");
		         console.log("찾은 엘리먼트 수: " ,jq_p1.length); 
		       
		         //배열에 저장된 엘리먼트 얻기 배열처럼 표현하면 됨 내부 엘리먼트를 찾는경우는 거의 없음
		         console.log("내부 배열의 0 인덱스에 저장된 엘리먼트: ", jq_p1[0]);  
			}
		 
			//클래스의 이름을 가지고 찾기
			function findElementByClass() {
				//비교하면서 보기
				//var el_class1 = document.getElementsByClassName("class1");
				// 클래스로 찾기
     
	         /* var el_class1 = document.getElementsByClassName("class1");
	         console.log(el_class1);
	         console.log(el_class1[0]); */
	
	         var jq_class1 = $(".class1");
	         console.log("찾은 엘리먼트 수: ", jq_class1.length);
	         
	         for (var el of jq_class1) {
	            console.log(el);
	         }
      
				
			}
				
			function findElementByTag() {
				
				var jq_p = $("p");
				console.log("찾은 엘리먼트 수: ", jq_p.length);
				for(var el of jq_p) { 
					console.log(el);
				}
				
				
			}
			
			function findElementByChecked() {
				var jq_checked = $("[name=skill]:checked") //속성의
				console.log("찾은 엘리먼트 수: ", jq_checked.length);
				for(var el of jq_checked) { 
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