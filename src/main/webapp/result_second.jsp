<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 	request.setCharacterEncoding("euc-kr");

	String newtri1= request.getParameter("pre1");
	String newtri2 = request.getParameter("pre2");
%>

<%if(newtri1.equals("비타민D")){ %>
<div style="">
<img class="poster" src="images/D.JPG" height="970px">
</div>
<%} %>
<%if(newtri1.equals("칼슘")){ %>
<div style="">
<img class="poster" src="images/cal.JPG" height="970px">
</div>
<%} %>
<%if(newtri1.equals("유산균")){ %>
<div style="">
<img class="poster" src="images/germ.JPG" height="970px">
</div>
<%} %>
<%if(newtri1.equals("오메가3")){ %>
<div style="">
<img class="poster" src="images/omega.JPG" height="970px">
</div>
<%} %>

<%if(newtri2.equals("비타민D")){ %>
<div style="">
<img class="poster" src="images/D.JPG" height="970px">
</div>
<%} %>
<%if(newtri2.equals("칼슘")){ %>
<div style="">
<img class="poster" src="images/ca.JPG" height="970px">
</div>
<%} %>
<%if(newtri2.equals("유산균")){ %>
<div style="">
<img class="poster" src="images/germ.JPG" height="970px">
</div>
<%} %>
<%if(newtri2.equals("오메가3")){ %>
<div style="">
<img class="poster" src="images/omega.JPG" height="970px">
</div>
<%} %>

<h1><%=newtri1 %></h1>
<h1><%=newtri2 %></h1>
</body>
</html>




