<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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


</style>

	<head>
		<title>HEALTH PLUS</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			
				<!-- Header -->
				<div class="header">
    				<div class="logo"><img src="assets/css/img3/logo.png"></div>
   				 	</div>
					
						<!-- <nav id="nav">
							<ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
											<li><a href="index.jsp">Home</a></li>
											<li><a href="generic.jsp">Generic</a></li>
											<li><a href="elements.jsp">Elements</a></li>
											<li><a href="#">Sign Up</a></li>
											<li><a href="#">테스트 시작</a></li>
											<li><a href="generic.jsp">Generic</a></li>
											<li><a href="elements.jsp">Elements</a></li>
											<li><a href="login.jsp">Sign Up</a></li>
											<li><a href="#">Log In</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</nav> -->
					</header>

				<!-- Main -->
					<article id="main">
					
						<section style="background-color: beige" class="wrapper style5"
						padding-bottom: 0px;>
							<div class="inner" style="background-color: beige">

								<section>
									<h4>두번째 페이지에요</h4>
								
									<hr/>
									
									<form method="post" action="http://localhost:9000/test2">
											
											
												<div class="col-6 col-12-small">
												<ul class="1actions">
													
													<h4>1. 눈 관련 불편한 점을 한개 선택하세요.</h4>
													<br>
													<li><input type="checkbox" id="1" name="10" >
													<label for="1">눈이 건조하고 뻑뻑하며 가려움을 느껴요.	</label></li>
													<br>
													<li><input type="checkbox" id="2" name="11" >
													<label for="2">눈커풀이 계속 떨려요.	</label></li>
													<br>
													<li><input type="checkbox" id="3" name="12" >
													<label for="3">낮에는 이상 없는데 저녁에 잘 안보이는것 같아요.</label></li>
													<br>
													<h4>2. 뼈와 관절 관련 불편한 점을 한개 선택하세요.</h4>
													<br>
													<li><input type="checkbox" id="4" name="16" >
													<label for="4">다른 사람에 비해 뼈가 잘 부러져요.</label></li>
													<br>
													<li><input type="checkbox" id="5" name="17">
													<label for="5">다른 사람에 비해 뼈가 약하다 생각해요.</label></li>
													<br>
													<li><input type="checkbox" id="6" name="18" >
													<label for="6">자꾸만 관절이 쑤셔요.</label></li>
													<br><br>
													<li style="display:inline-block; width: 50px"><input type="button" value="뒤로가기" onclick="history.back(-1);"></li>
													<li style="display:inline-block; margin-left: 500px; width: 40px"><input type="submit" value="결과 보기" class="primary" /></li>
													
													</form>
												</ul>
												
												
											</div>
											</div>

									</form>

	</body>
</html>