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
			<div id="page-wrapper">

				<!-- Header -->
					<header id="header">
						<h1><a href="index.jsp">HEALTH PLUS</a></h1>
						<nav id="nav">
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
						</nav>
					</header>

				<!-- Main -->
					<article id="main">
						<header style="background-color: beige;">
							<h2>Elements</h2>
							<p>Aliquam ut ex ut interdum donec amet imperdiet eleifend</p>
						</header>
						<section class="wrapper style5">
							<div class="inner">

								<section>
									<h4>설문 조사를 시작할게요</h4>
								
									<hr/>
									
									<form method="post" action="researchNext">
											
											
												<div class="col-6 col-12-small">
												<ul class="1actions">
													<h4>이름이 무엇인가요?<h4>
													<br>
													<li style="width:300px;"><input type="text" name="nickname" id="demo-name" value="" placeholder="닉네임" ></li>
													<br>
													<br>
													<h4>해당 사항이 있다면 선택해 주세요</h4>
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
													
													</form>
												</ul>
												
												
											</div>
											</div>

									</form>

	</body>
</html>