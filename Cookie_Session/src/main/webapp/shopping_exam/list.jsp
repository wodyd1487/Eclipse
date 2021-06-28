<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>판매제품목록</h1>
	<ul>
		<li><a href="mouse.jsp">마우스</a></li>
		<li><a href="phone.jsp">갤럭시 노트10</a></li>
		<li><a href="computer.jsp">사무용 PC</a></li>
	</ul>
	<hr>
	<h5>최근 본 상품</h5>
	<%
		//1.쿠키값 받아오기
		
		Cookie [] cookies = request.getCookies();
		//2.쿠키값 null처리
		if(cookies !=null){
			for(int i = 0; i<cookies.length; i++){
				
				//3.쿠키이름 가져오기
				
				//out.print(cookies[i].getName()+"<br>");
				
				//4.쿠키이름에 item이 포함되어 있는 경우	
				if(cookies[i].getName().contains("item")){
				//if(cookies[i].getName().equals("item"+(i+1))){
					
					
					//5.해당 value 가져오기
					out.print(cookies[i].getValue()+"<br>");
					
				}

							
			}
			
		}		
		

					
	%>
</body>
</html>