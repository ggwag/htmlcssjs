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
			//정적필드 static !!!
			//클래스 선언
			class Car {
				//정적필드와 초기화
				static company = "현대자동차";
				
				constructor(name="그랜저", price=50000000) {
					//인스턴스 필드와 초기화 인스턴스 필드는 생성자 안에서 선언
					this.name = name;
					this.price = price;
				}
				
				//정적 메소드 선언		스크립트도 static 붙는다
				static setCompany(company) {
					Car.company = company;
				}
				static getCompany() {
					return Car.company;  //정적 메소드는 this 사용 불가
				}
				//인스턴스 메소드 선언	
				setPrice(price) {
					this.price = price; //인스턴스 메소드는 this 사용 가능
				}
				getPrice() {
					return this.price;
				}
			}
			
			//정적 멤버 사용
			console.log(Car.company);//클래스가 static 이기때문에 바로 가져와서 사용 가능
			Car.setCompany("KIA 자동차");
			console.log(Car.getCompany());
			
			//인스턴스 멤버 사용
			//객체만들기
			const myCar =new Car("포르쉐", 250000000);
			console.log(myCar.name);
			console.log(myCar.price);
			myCar.setPrice(300000000);
			console.log(myCar.getPrice());
		</script>
	
	</head>
	
	<body>
		<div class="card">
			<div class="card-header">exam10_static</div>
			<div class="card-body">
				Content
			</div>		  			 
	    </div>
	</body>
</html>