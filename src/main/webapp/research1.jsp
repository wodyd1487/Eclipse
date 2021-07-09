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
	<body>
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

				<!-- Main -->
					<article id="main">

						<section style="background-color: beige" class="wrapper style5"
						padding-bottom: 0px;>
							<div class="inner" style="background-color: beige">

								<section>
								
								
									<h4>당신의 건강에 플러스가 되는 부족한 영양소 분석을 시작할게요 :)</h4>
								
									<hr/>
									
									<form method="post" action="researchNext">
											
											
												<div class="col-6 col-12-small">
												<ul class="1actions">
													<h4>Health Plus가 회원님을 어떻게 부르면 좋을까요?<h4>
													<br>
													<li style="width:300px;"><input type="text" name="nickname" id="demo-name" value="" placeholder="닉네임" ></li>
													<br>
													<br>
													<h4>해당 사항이 있다면 선택해 주세요.</h4>
													<br>
													<li><input type="checkbox" id="high_press" name="high_press" value="1" >
													<label for="high_press">고혈압 환자이거나(혈압약 복용하거나) 당뇨병 환자인 경우	</label></li>
													<br>
													<li><input type="checkbox" id="ear_preg" name="ear_preg" value="2">
													<label for="ear_preg">임신 예정 혹은 가능성이 있거나 임신초기(12주 이하) 인 경우</label></li>
													<br>
													<li><input type="checkbox" id="mid_preg" name="mid_preg" value="3">
													<label for="mid_preg">임신 12주 이상인 경우</label></li>
													<br>
													<li><input type="checkbox" id="normal" name="normal" value="4" >
													<label for="normal">위 내용에 해당없음</label></li>
													<br><br>
													<li style="display:inline-block; width: 50px"><input type="button" value="뒤로가기" onclick="history.back(-1);"></li>
													<li style="display:inline-block; margin-left: 500px; width: 40px"><input type="submit" value="다음 페이지" class="primary" /></li>
													</section>
													</form>
												</ul>
												
												
											</div>
											</div>

									</form>
						

	</body>
<!-- 	<footer>
	<div class="footer">
	
	<a class = "r" target="_blank"></a>
	
	</div>
	</footer> -->

</html>