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
<title>HEALTH PLUS - COMPANY</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/stylesheet/newmain.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body>

	<!-- 로고 -->
	<div class="header">
    <a href="index.jsp" class="logo"><img src="assets/css/img3/logo.png"></a>
	

	<%if(member == null){ %>
    <div style="position: relative; left: 500px; top: 50px;">
    <a style="  " href="generic.jsp">회사소개</a>
    </div>
    <div style="position: relative; left: 550px; top: 50px;">
    <a style="  " href="q&n.jsp">고객센터</a>
    </div>
    <div style="position: relative; left: 600px; top: 50px;">
    <a style="  " href="login.jsp">로그인</a>
    </div>
    <div style="position: relative; left: 650px; top: 50px;">
    <a style="  " href="research1.jsp">테스트</a>
    </div>
    <%}else{ %>
    <!-- 로그인됨  -->
    <div style="position: relative; left: 500px; top: 50px;">
    <a style="  " href="generic.jsp">회사소개</a>
    </div>
    <div style="position: relative; left: 550px; top: 50px;">
    <a style="  " href="q&n.jsp">고객센터</a>
    </div>
    <div style="position: relative; left: 600px; top: 50px;">
    <a style="  " href="logout.jsp">로그아웃</a>
    </div>
    <div style="position: relative; left: 650px; top: 50px;">
    <a style="  " href="mypage.jsp">마이페이지</a>
    </div>
    <div style="position: relative; left: 700px; top: 50px;">
    <a style="  " href="research1.jsp">테스트</a>
    </div>
    <%} %>
    
    </div>
    
	<!-- Page Wrapper -->
	<!--genericBanner -->
	<div id="genericbanner">
		<div class="innerGeneric">
			<div class="titleGeneric">무료로 부족한 영양소를 채워보세요</div>
			<div class="content">여러 문항의 설문을 통해 몸의 부족한 영양소를 추천해드립니다.</div>
		</div>
	</div>
	<%-- <nav id="nav">
				<ul>
					<li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
						<div id="menu">
							<ul>
								<li><a href="index.jsp">Home</a></li>

								<li><a href="generic.jsp">Generic</a></li>
								<li><a href="q&n.jsp">q&a</a></li>
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
			</nav> --%>


	<!-- Main -->
	<div class="innerGeneric1">
		<div class = "add1">
			<div class="subtitle">건강에 건강을 더하다</div><br>
			<!-- <div class="title02">헬스 플러스</div> -->
			<div class="contentGeneric">
				<!--건강에 건강을 더하다<br/><br/> -->
				헬스플러스는 여러분의 삶이 건강에 더 가까워지는 방법을 연구하고 제안합니다.<br> <br> 먼저 부족한
				영양소를 채우는 것에 집중하며, 건강 한 스푼 넣은 영양제 추천 서비스를 운영하고 있습니다.
			</div>
		</div>
		<div class ="add1">
			<div class="subtitle">브랜드 스토리</div><br>
			<!-- <div class="title02">헬스 플러스</div>
                <div class="content02">건강에 건강을 더하다<br/><br/> -->
			<div class="contentGeneric">
				불편해서 시작했습니다. 자신에게 필요한 영양제를 섭취하고싶지만 무엇을 먼저 먹어야 할지 모르겠나요?<br> <br>
				챙겨먹기는 세상 귀찮은데 그렇다고 안챙겨먹기는 불안해지고요. 필요한 영양제를 따로 번거롭게 구매하다 나섰습니다.<br>
				<br> 한번에 해결할 수 있는 방법을 직접 만들기 위해서요. 정직하게 만들고, 친절하게 설명할게요.<br>
				<br> 무언가를 더 추가하기 보다, 필요한 것만 남겼습니다.<br> <br> <br>
				<br> 뭐든지 과하게 먹으면 탈이 나듯이, 영양제도 마찬가지에요. <br><br>  자신에게 필요한 영양소 두 가지만을 우선적으로
				선별하여 추천 리스트를 만들고 있습니다.<br> <br> 또한, 가장 함량이 높고 가격이 합리적인 제품만
				소개해드릴게요.<br> <br> <br> <br> 멈추지 않고, 계속 발전하겠습니다.
				의미있는 도전을 하는 곳, 앞으로가 더 기대되는 곳이 되고 싶어요.<br> <br> 피로한 당신의 일상에
				플러스가 되어주는 든든한 친구가 있다면 좋겠죠? 헬스플러스가 그 자리 채워갈게요 :)<br> <br>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="footer">
		<div>
			<img class="footerLogo" src="img/logo.png">
		</div>
		<div class="text">Copyright ⓒ Health Plus (주)선생님 더워요</div>


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