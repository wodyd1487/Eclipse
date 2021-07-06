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
		<title>Elements - Spectral by HTML5 UP</title>
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
						<h1><a href="index.jsp">Spectral</a></h1>
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
						<header>
							<h2>Elements</h2>
							<p>Aliquam ut ex ut interdum donec amet imperdiet eleifend</p>
						</header>
						<section class="wrapper style5">
							<div class="inner">

								<section>
									<h4>두번째 페이지에요</h4>
								
									<hr/>
									
									<form method="post" action="http://localhost:9000/test2">
											
											
												<div class="col-6 col-12-small">
												<ul class="1actions">
													
													<h4>불편하시거나 걱정되는 항목 두가지를 선택하세요</h4>
													<br>
													<li><input type="checkbox" id="high_press" name="1" >
													<label for="high_press">상처가 생기면 잘 아물지 않아요. 	</label></li>
													<br>
													<li><input type="checkbox" id="ear_preg" name="2" >
													<label for="ear_preg">손끝 또는 발끝이 자주 저려요.	</label></li>
													<br>
													<li><input type="checkbox" id="mid_preg" name="3" >
													<label for="mid_preg">충치가 생기고 잇몸이 자주 붓고 피가 나요.</label></li>
													<br>
													<li><input type="checkbox" id="normal" name="2"  value="1">
													<label for="normal">변비가 있어요.</label></li>
													<br>
													<li><input type="checkbox" id="normal" name="2"  value="2">
													<label for="normal">복통이나 속쓰림이 자주 발생해요.</label></li>
													<br>
													<li><input type="checkbox" id="normal" name="2"  value="3">
													<label for="normal">설사와 같은 묽은 변을 자주 보는 편이에요.</label></li>
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