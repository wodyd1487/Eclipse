<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 정보조회</h1>
	<%
		// 세션 정보조회
		// 괄호 안에 파일 써주는거 다운캐스팅 부모클래스 --> 자식클래스 타입으로 변환
		// why? 세션영역에 저장된 정보의 타입이 Object이기 때문에
		String nick = (String)session.getAttribute("nick");
		out.print(nick);
	
	%>
</body>
</html>