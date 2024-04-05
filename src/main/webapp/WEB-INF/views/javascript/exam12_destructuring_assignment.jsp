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
			//객체 생성
			const board = {
					bno: 1,
					title: "오늘은 월요일",
					content: "날씨가 좋네요. 자바스크립트 공부",
					writer: "홍길동",
			};
			//---------------------------------------------------
			//얘랑 똑같은게 멀까? var title = board.title;
			var {bno} = board; // 구조분해 해서 타이틀만 취하겠다.
			console.log(bno);
			console.log("");
			
			/* var bno = board.bno;
			var content = board.content; */
			
			//많이 쓰니까 알고있어라.
			var {title,content} = board;
			console.log("title: " + title, "content: "+ content);
			console.log("title: " + title);
			console.log("콘텐츠: " + content);
			//--------------------------------------------------
			function fun1({title}) { //보드를 매개값으로 줬을때 타이틀만 받겠다.
				console.log(title);
			}
			fun1(board);
			console.log("");
 			//--------------------------------------------------
 			//...rest: 나머지 속성은 객체로 감싸서 만듦
 			var {writer, ...rest} = board; //writer만 변수로 받고 나머지는 객체로 받겠다.
 			console.log(writer);       //보드 안에서 writer만 받고 나머지는 객체로 받겠다.
 			console.log(rest);				//rest는 맨 마지막 요소로 와야한다. rest 많이 씀
 			console.log("");
 			//--------------------------------------------------
 			//...은 나머지 속성은 구조분해 해서 그대로 넣어라. 이거 중요
 			var newBoard1 = {...board, bno:2, title:"벚꽃이 좋아요", hitcount:1}; // bno 와 title 만큼 바꿔라
 			console.log(newBoard1);  //비넘과 타이틀은 바꾸되 나머지는 그대로 속성으로 받겠다. 없는거는 따로 추가할 수 있다
			//--------------------------------------------------
 			//리턴값이 객체일 경우에는 ()로 감싸야한다.
			/* var newBoard2 = (obj) => {
 			return ({...obj, hitcount:1});//함수인데 중괄호 오면 
			}; */

			var newBoard2 = obj => ({...obj, hitcount:1});//함수인데 중괄호 오면 
			console.log(newBoard2(board));
			
				
			
			
		</script>
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam12_destructuring_assignment</div>
			<div class="card-body">
				구조분해(destructuring)할당(assignment)
				
				변수 = 값; 값을 변수에 저장한다.대입한다.할당한다.
			</div>		  			 
	    </div>
	</body>
</html>