<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%MemberDTO member = (MemberDTO)session.getAttribute("member"); 

/* MessageDAO dao = new MessageDAO();
ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
      
if(member != null){
   list = dao.showMessage(member.getEmail());
} */ %>
<!DOCTYPE HTML>
<!--
	Spectral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>HEALTH PLUS</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<style>
h2{
font-size : xx-large;
}
p{
font-size: x-large;
}
header{
background-image: url('jy.jpg');
}
</style>
<body class="is-preload">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" >
			<h1>

				<a href="index.jsp">HEALTH PLUS</a>

			</h1>
			<nav id="nav">
				<ul>
					<li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
						<div id="menu">
							<ul>
								<li><a href="index.jsp">Home</a></li>

								<li><a href="generic.jsp">Company</a></li>
								<li><a href="q&n.jsp">Q&A</a></li>
								<%if(member != null){ %>
                                  <% if(member.getId().equals("admin")) { %>
                                     <li><a href="#">회원관리</a></li>
                                     <% } %>
                                     <li><a href="#">개인정보수정</a></li>
                                     <li><a href="logout.jsp">로그아웃</a></li>
                                    <%}else{%>
                                    <li><a href="login.jsp">Login</a></li>
                                    <% }%>   

							</ul>
						</div></li>
				</ul>
			</nav>
		</header>

		<!-- Main -->
		<article id="main">
			<header>
				<h2>무료로 부족한 영양소를 채워보세요</h2>
				<p>여러 문항의 설문을 통해 몸의 부족한 영양소를 추천해드립니다.</p>
			</header>
			<section class="wrapper style5">
				<div class="inner">

					<h3>헬스 플러스</h3>
					<h2>건강에 건강을 더하다</h2>
					<p>헬스플러스는 여러분의 삶이 건강에 더 가까워지는 방법을 연구하고 제안합니다.</p>
					<p>먼저 부족한 영양소를 채우는 것에 집중하며, 건강 한 스푼 넣은 영양제 추천 서비스를 운영하고 있습니다.</p>

					<hr />

					<h2>브랜드 스토리</h2>
					<p> 불편해서 시작했습니다. 자신에게 필요한 영양제를 섭취하고싶지만 무엇을 먼저 먹어야 할지 모르겠나요?
						챙겨먹기는 귀찮은데 그렇다고 안하자니 불안해지고요. 필요한 영양제를 따로 번거롭게 구매하다 나섰습니다.
						한 번에 해결할 수 있는 방법을 직접 만들기 위해서요. 정직하게 만들고, 친절하게 설명할게요.
						무언가를 더 추가하기 보다, 필요한 것만 남겼습니다.</p>
					<br>
					<p> 뭐든지 과하게 먹으면 탈이 나듯이, 영양제도 마찬가지에요.
						자신에게 필요한 영양소 두 가지만을 우선적으로 선별하여 추천 리스트를 만들고 있습니다.
						또한, 가장 함량이 높고 가격이 합리적인 제품만 소개할게요.</p>
					<br>	
					<p> 멈추지 않고, 계속 발전하겠습니다. 의미있는 도전을 하는 곳, 앞으로가 더 기대되는 곳이 되고 싶어요.
						피로한 당신의 일상에 플러스가 되어주는 든든한 친구가 있다면 좋겠죠? 헬스플러스가 그 자리 채워갈게요 :)</p>
					<br>
				</div>
			</section>
		</article>

		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon solid fa-envelope"><span
						class="label">Email</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>