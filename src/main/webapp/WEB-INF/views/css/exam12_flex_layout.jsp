<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<style type="text/css">
			*{
				margin: 0px;
				padding: 0px;
				
			}
			
			#wrapper {
				display: flex;
				flex-direction: column;
			}
			
			header {
				border: 1px solid black;
				background-color: lightgray;
				padding: 30px;
				text-align: center;
				font-size: 2em;
				color: #ffffff;
			}
			
			section {
				display: flex;
				flex-direction: row;
				border: 1px solid black;
				height: 300px;
			}
			
			/* footer {
				border: 1px solid black;
				padding: 10px;
				text-align: center;
			}
			 */
			nav {
				flex: 3;
				border: 1px solid lightyellow;
				box-sizing: border-box;
				background-color: lightgreen;
				padding: 20px;
			}
			
			article {
				flex: 7;
				border: 1px solid yellow;
				box-sizing: border-box;
				padding: 20px;
			}
		
			/* footer ----------------------------------- */
			.footer{
			  background: #152F4F;
			  color:white;
			  
			  .links{
			    ul {list-style-type: none;}
			    li a{
			      color: white;
			      transition: color .2s;
			      &:hover{
			        text-decoration:none;
			        color:#4180CB;
			        }
			    }
			  }  
			  .about-company{
			    i{font-size: 25px;}
			    a{
			      color:white;
			      transition: color .2s;
			      &:hover{color:#4180CB}
			    }
			    padding-right: 100px;
			    
			  } 
			  .location{
			    i{font-size: 18px;}
			    padding-left: 100px;
			  }
			  .copyright p{border-top:1px solid rgba(255,255,255,.1);} 
			}
			
		</style>
	</head>
	
	<body>
		<h4>exam12_flex_layout</h4>
		<hr/>
		
		    <div id="wrapper">
        <header>
            <h2>Cities</h2>
        </header>

        <section>
            <nav>
                <ul>
                    <li><a href="#">London</a></li>
                    <li><a href="#">Paris</a></li>
                    <li><a href="#">Seoul</a></li>
                </ul>
            </nav>
            <article>
                <h1>London</h1>
                <p>London is the capital city of England. It is the most populous city in the  United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
                <p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
            </article>
        </section>

        <footer>
        <!-- footer -->
		<div class="mt-5 pt-5 pb-5 footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-xs-12 about-company" style="flex:1;">
						<h4>내일의 나를 만드는 [건강메이트] 라이필</h4><br/><br/>
						<p class="pr-5 text-white-50"><h5>Contact us</h5>
						<i class="fa fa-envelope-o mr-3" style="font-size:14px;">팀장 유현주, hyeonju__@naver.com <br/></i>
						<i class="fa fa-envelope-o mr-3" style="font-size:14px">팀원 변성준, tjdwns3823@naver.com <br/></i>
						<i class="fa fa-envelope-o mr-3" style="font-size:14px">팀원 곽동현, ggwag@gmail.com <br/></i>
					</div>
		
					<div class="col-lg-4 col-xs-12 location" style="flex:1;">
						<h4 class="mt-lg-0 mt-sm-4">Location</h4>
						<p>서울특별시 송파구 중대로 135 아이티벤처타워, 12층 한국소프트웨어산업협회</p>
						<p class="mb-0">
							<i class="fa fa-phone mr-3"></i> 팀 라이필 1차 미니 웹 프로젝트
						</p>
						<p class="mt-5">
							고객센터 버튼? 공지사항 버튼? 보통 SNS 계정으로 이동하는 아이콘이나, 사업자번호 등이 나오는 부분
						</p>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col copyright">
						<p class="">
							<small class="text-white-50">© 2024. All Rights Reserved.</small>
						</p>
					</div>
				</div>
			</div>
		</div>
        </footer>
    </div>
	</body>
</html>