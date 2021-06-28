<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Cookie정보조회</h1>
	<%
	Cookie[]cookies =  request.getCookies();
	
	for(int i = 0; i<cookies.length; i++){
		out.print(cookies[i].getName());
		out.print(":");
		out.print(cookies[i].getValue()+"<br>");
		
	} 
	
	%>
</body>
</html>