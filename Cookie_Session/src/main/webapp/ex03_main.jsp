<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%if(session.getAttribute("id") != null){ %>
		<%=session.getAttribute("id") %>
		
		<a href ="ex03_logout.jsp">�α׾ƿ� �ϱ�</a>
	
	<%}else{ %>
	
	<form action = "LoginService" method = "post">
		ID : <input type="text" name="id"><br>
		PW : <input type="text" name="pw"><br>
		<input type="submit" value="�α���">
	</form>
	<%} %>
</body>
</html>