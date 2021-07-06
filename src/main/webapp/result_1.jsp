<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	String pre1 = request.getParameter("predict1"); 
	if(pre1.equals("1")){pre1 = "비타민D";}
	else if(pre1.equals("2")){pre1 = "비타민D";}
	else if(pre1.equals("3")){pre1 = "칼슘";}
	else if(pre1.equals("4")){pre1 = "유산균";}
	else if(pre1.equals("5")){pre1 = "비타민U";}
	else if(pre1.equals("6")){pre1 = "식이섬유";}
	else if(pre1.equals("7")){pre1 = "판토텐산(B5)";}
	else if(pre1.equals("8")){pre1 = "비타민C";}
	else if(pre1.equals("9")){pre1 = "리보플라빈";}
	else if(pre1.equals("10")){pre1 = "오메가3";}
	else if(pre1.equals("11")){pre1 = "코큐텐(Q10)";}
	else if(pre1.equals("12")){pre1 = "밀크씨슬";}
	else if(pre1.equals("13")){pre1 = "마그네슘";}
	else if(pre1.equals("14")){pre1 = "칼슘";}
	else if(pre1.equals("15")){pre1 = "비타민D";}
	else if(pre1.equals("16")){pre1 = "칼슘";}
	else if(pre1.equals("17")){pre1 = "비오틴";}
	else if(pre1.equals("18")){pre1 = "헤마틴";}
	else if(pre1.equals("19")){pre1 = "시스틴";}
	String pre2 = request.getParameter("predict2"); 
	if(pre2.equals("1")){pre2 = "비타민D";}
	else if(pre2.equals("2")){pre2 = "비타민D";}
	else if(pre2.equals("3")){pre2 = "칼슘";}
	else if(pre2.equals("4")){pre2 = "유산균";}
	else if(pre2.equals("5")){pre2 = "비타민U";}
	else if(pre2.equals("6")){pre2 = "식이섬유";}
	else if(pre2.equals("7")){pre2 = "판토텐산(B5)";}
	else if(pre2.equals("8")){pre2 = "비타민C";}
	else if(pre2.equals("9")){pre2 = "리보플라빈";}
	else if(pre2.equals("10")){pre2 = "오메가3";}
	else if(pre2.equals("11")){pre2 = "코큐텐(Q10)";}
	else if(pre2.equals("12")){pre2 = "밀크씨슬";}
	else if(pre2.equals("13")){pre2 = "마그네슘";}
	else if(pre2.equals("14")){pre2 = "칼슘";}
	else if(pre2.equals("15")){pre2 = "비타민D";}
	else if(pre2.equals("16")){pre2 = "칼슘";}
	else if(pre2.equals("17")){pre2 = "비오틴";}
	else if(pre2.equals("18")){pre2 = "헤마틴";}
	else if(pre2.equals("19")){pre2 = "시스틴";}
%>
<h1>첫번째 추천 영양소는 <%= pre1 %> 입니다.</h1>
<h1>두번째 추천 영양소는 <%= pre2 %> 입니다.</h1>
</body>
</html>




