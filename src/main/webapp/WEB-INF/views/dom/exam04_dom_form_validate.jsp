<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>DOM Form Validate</title>
      
      <!-- Latest compiled and minified CSS -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
      
      <!-- Latest compiled JavaScript -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  	
  		<script>
  			function handleCheckData() {
  				console.log("입력 데이터를 검사합니다.");
  				
  				//form 태그의 action 기능을 수행하지 않도록 함 프론트엔드에서 중요
  				event.preventDefault();
  				
  				//각 입력 양식의 데이터 검사
  				var totalResult = true;
  				
  				//방법1) ID검사(정규표현식 사용)   아이디는 알파벳 대소문자,숫자혼용 6~10자
  				var uidPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/; //시작 ^ 끝$
  				var el_uid = document.querySelector("#uid");
  				//el_uid = document.joinForm.uid;
  				
  				var el_uid_value = el_uid.value; //input타입 객체에 value속성을 넣으면 사용자가 입력한 값을 얻을 수 있다.
  				console.log("uid: ", el_uid_value);
  				
  				var uidPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}$/;
  				var uidResult = uidPattern.test(el_uid_value);
  				console.log("uidResult: " ,uidResult);
  				var el_uid_span = document.querySelector("#uidSpan");
  				if(uidResult) {
  					el_uid_span.classList.remove("text-danger");
  					//el_uid.classList.remove("bg-danger");
  				} else{
  					//el_uid.classList.add("bg-danger");
  					el_uid_span.classList.add("text-danger");
  					totalResult = false;
  				}
  				
  					
  				//방법2) Email 검사하기 (정규표현식)---------------
  				var el_email = document.querySelector("#email");
  				var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  				var emailResult = emailPattern.test(el_email.value);
  				if(emailResult) {
  					el_email.classList.remove("bg-danger");
  				} else {
  					el_email.classList.add("bg-danger");
  					totalResult = false;
  				}
  				
  				//방법3) Password검사하기
  				var el_password = document.querySelector("#password");
  				var passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$/;
  				var passwordResult = passwordPattern.test(el_password.value);
  				var el_password_span = document.querySelector("#passwordSpan");
  				if(passwordResult) {
  					el_password_span.classList.remove("text-danger");
  				} else {
  					el_password_span.classList.add("text-danger");
  					totalResult = false;
  				}
  				
  				//방법4) Phone검사하기
  				var el_phone = document.querySelector("#phone");
  				var phonePattern = /^010-\d{3,4}-\d{4}$/;
  				var phoneResult = phonePattern.test(el_phone.value);
  				var el_phone_span = document.querySelector("#phoneSpan");
  				if(phoneResult) {
  					el_phone_span.innerHTML = "예) 010-123-1234, 010-1234-1234";
  					el_phone_span.classList.remove("text-danger");
  				} else {
  					el_phone_span.innerHTML = "전화번호 형식이 아닙니다.";
  					el_phone_span.classList.add("text-danger");
  					totalResult = false;
  					}
  				
  				//방법5) 전체 유효성 검사결과가 true일 경우
  				if(totalResult) {
  					var el_form = document.querySelector("#joinForm");
  					//el_form = document.joinForm; //동적 속성으로 추가되서 이렇게 써도 됨
  					
  					//수동으로 action 기능을 수행하도록 만든다.
  					el_form.submit();
  					
  				}
  			}
  		</script>
  
   </head>
   
   <body>
      <div class="card">
          <div class="card-header">exam04_dom_form_validate</div>
          <div class="card-body">
            <form id="joinForm" name="joinForm" 
            	  action="/htmlcssjs/dom" 
            	  onsubmit="handleCheckData()" 
            	  novalidate> 
            										<!-- novalidate를 쓰는이유: 
            											  기본 양식마다 기본 유효성 검사기능이 들어가있다.
            											  이거에서 굳이 개발자가 잘 작성되었는지 검사할 필요가 없음
            											  넣으면 개발자가 직접 다 검사하는 자바스크립트를 만들어야함
            										 -->
            											  
              <div class="mb-3">
                <label for="uid" class="form-label">ID</label>
                <input type="text" class="form-control" id="uid" name="uid" value="Abc123"/>
                <span id="uidSpan" class="form-text">알파벳 대소문자, 숫자를 혼용해서 6자 이상 10자 이하</span>
              </div>
            
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="Abc123@mycompany.com"/>
              </div>							<!-- name이 필요한 이유 값에 대한 식별을 위해 사용되기 때문에 없으면 서버가 식별을 못함 -->
            
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" value="Abc12345"/>
                <span id="passwordSpan" class="form-text">알파벳 대소문자, 숫자를 혼용해서 8자 이상 15자 이하</span>
              </div>
            
              <div class="mb-3">
                <label for="phone" class="form-label">Phone</label>
                <input type="text" class="form-control" id="phone" name="phone" value="010-123-1234"/>
                <span id="phoneSpan" class="form-text">예) 010-123-1234, 010-1234-1234</span>
                
              </div>
            
              <div class="mb-3">
                <label for="city" class="form-label">City</label>
                <select id="city" name="city" class="form-control">
                  <option value="seoul">서울</option>
                  <option value="pusan">부산</option>
                  <option selected value="jeju">제주</option>
                </select>
              </div>
            
              <div class="mb-3">
                <label class="form-label">Hobby</label>
                <div class="d-flex">
                   <div class="form-check me-3">
                     <input class="form-check-input" type="checkbox" id="hobby1" name="hobby" value="movie" checked/>
                     <label class="form-check-lable" for="hobby1"> 영화 </label>
                   </div>
                   
                   <div class="form-check me-3">
                     <input class="form-check-input" type="checkbox" id="hobby2"  name="hobby" value="trip" checked/>
                     <label class="form-check-lable" for="hobby2"> 여행 </label>
                   </div>
                   
                   <div class="form-check me-3">
                      <input class="form-check-input" type="checkbox" id="hobby3"  name="hobby" value="game" />
                      <label class="form-check-lable" for="hobby3"> 게임 </label>
                   </div>               
                 </div>
              </div>
            
              <div class="mb-3">
                <label class="form-label">Job</label>
                <div class="d-flex">
                   <div class="form-check me-3">
                     <input class="form-check-input" type="radio" id="job1" name="job" value="developer" checked />
                     <label class="form-check-lable" for="job1"> 개발자 </label>
                   </div>
                   
                   <div class="form-check me-3">
                     <input class="form-check-input" type="radio" id="job2" name="job" value="designer"/>
                     <label class="form-check-lable" for="job2"> 디자이너 </label>
                   </div>
                   
                   <div class="form-check me-3">
                     <input class="form-check-input" type="radio" id="job3" name="job" value="manager"/>
                     <label class="form-check-lable" for="job3"> 매니저 </label>
                   </div>
                </div>
              </div>
            
              <div class="text-center">
                <input type="submit" class="btn btn-primary" value="Join" />
                <input type="reset" class="btn btn-primary" value="Reset" />
              </div>
            </form>
         </div> 
      </div>
   </body>
</html>