<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1 align="center">JQuery를 이용한 Ajax테스트</h1>
	<h3>1. 버튼클릭시 get방식으로 서버 데이터 전송 및 응답</h3>
	입력 :
	<input type="text" id="input1">
	<button id="btn1">전송</button>
	응답:
	<input type="text" id="output1" style="width: 300px" readonly>
	
	<script>
		$(function(){
			$("#btn1").click(function(){
				var input = $("#input1").val();
				
				$.ajax({
					//url : 데이터를 전송할 url(필수)
					url :"jqTest1.do",
					
					//data : 요청시 전달한 파라미터 설정(key:value)
					data :{
						input :input
					},
					
					//type : 전송방식(get/post)
					type:"get",
					
					success :function(result){// success : Ajax 통신 성공시 처리 할 함수를 지정하는 속성
						console.log(result)
						console.log("Ajax통신성공")
						$("#output1").val(result)
					},
					error :function(){// error : 통신 실패시 처리할 함수를 지정하는 속성
						console.log("Ajax통신실패")
					},
					complete :function(){ //complete : 통신 성공 여부와 상관없이 실행
						console.log("무조건 호출")
					}
				})
				
			})
		});
	
	</script>
</body>
</html>