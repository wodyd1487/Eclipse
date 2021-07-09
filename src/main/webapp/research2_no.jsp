<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%MemberDTO member = (MemberDTO)session.getAttribute("member");%>
<!DOCTYPE HTML>


<!--
	Spectral by jsp5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<style>
li{
   list-style:none;
   }
   
 .header{
    display: flex;
    font-family: S-CoreDream-4Regular;
    width: 100%;
    height: 10vh;
    background-color:beige;
}
.logo{
    display: flex;
    flex-direction: start;
    width: 15%;
    height: 60%;
    margin: 2vh;
}
section.wrapper.style5 {
    background-color: beige;
    color: black;
}

@font-face {
    font-family: 'S-CoreDream-5Medium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

div a {
font-family: 'S-CoreDream-5Medium';
color : black;
font-size : 75%;
bottom : 150px;
}

</style>

	<head>
		<title>HEALTH PLUS</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main1.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			

				<!-- Header -->
					<div class="header">
    		    				<a class="logo" href="index.jsp"><img src="assets/css/img3/logo.png"></a>
    				      <%if(member == null){ %>
    <div style="position: relative; left: 425px; top: 40px;">
    <a style="  " href="generic.jsp">회사소개</a>
    </div>
    <div style="position: relative; left: 475px; top: 40px;">
    <a style="  " href="q&n.jsp">고객센터</a>
    </div>
    <div style="position: relative; left: 525px; top: 40px;">
    <a style="  " href="login.jsp">로그인</a>
    </div>
     <div style="position: relative; left: 575px; top: 40px;">
    <a style="  " href="join.jsp">회원가입</a>
    </div>
    
    <%}else{ %>
    <!-- 로그인됨  -->
    <div style="position: relative; left: 400px; top: 40px;">
    <a style="  " href="generic.jsp">회사소개</a>
    </div>
    <div style="position: relative; left: 450px; top: 40px;">
    <a style="  " href="q&n.jsp">고객센터</a>
    </div>
    <div style="position: relative; left: 500px; top: 40px;">
    <a style="  " href="logout.jsp">로그아웃</a>
    </div>
    <div style="position: relative; left: 550px; top: 40px;">
    <a style="  " href="mypage.jsp">마이페이지</a>
    </div>
    <div style="position: relative; left: 600px; top: 40px;">
    <a style="  " href="research1.jsp">테스트</a>
    </div>
    <%} %>
    </div>
   				 	</div>

					</header>

				<!-- Main -->
					<article id="main">
						
						<section style="background-color: beige" class="wrapper style5"
						padding-bottom: 0px;>
							<div class="inner" style="background-color: beige">

								<section>
								<section>
									<h4>두번째 페이지에요</h4>
								
									<hr/>
									
									<form method="post" action="http://localhost:9000/test1">
											
											
												<div class="col-6 col-12-small">
												<ul class="1actions">
													
													<h4>불편하시거나 걱정되는 항목 두가지를 선택하세요</h4>
													<br>
													<li><input type="checkbox" id="1" name=1 >
													<label for="1">혈액순환 	</label></li>
													<br>
													<li><input type="checkbox" id="2" name=2 >
													<label for="2">소화/장	</label></li>
													<br>
													<li><input type="checkbox" id="3" name=3 >
													<label for="3">피부</label></li>
													<br>
													<li><input type="checkbox" id="4" name="4">
													<label for="4">눈</label></li>
													<br>
													<li><input type="checkbox" id="5" name="5">
													<label for="5">피로감</label></li>
													<br>
													<li><input type="checkbox" id="6" name="6">
													<label for="6">뼈와 관절</label></li>
													<br>
													<li><input type="checkbox" id="7" name="7">
													<label for="7">모발</label></li>
													<br><br>
													<li style="display:inline-block; width: 50px"><input type="button" value="뒤로가기" onclick="history.back(-1);"></li>
													<li style="display:inline-block; margin-left: 500px; width: 40px"><input type="submit" value="증상 선택하기" class="primary" /></li>
													
													</form>
												</ul>
												
												
											</div>
											</div>

									</form>

	</body>
</html>