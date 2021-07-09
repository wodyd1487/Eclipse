<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
   <%MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
<!DOCTYPE HTML>
<!--
   Spectral by jsp5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>HEALTH PLUS - MY PAGE</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
   <link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<style>
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

a {
	color : black;
}
</style>
<body class="is-preload">
	<div class="header">
	 <a href="index.jsp" class="logo"><img src="assets/css/img3/logo.png"></a>


	<%if(member == null){ %>
    <div style="position: relative; left: 425px; top: 50px;">
    <a style="  " href="generic.jsp">회사소개</a>
    </div>
    <div style="position: relative; left: 475px; top: 50px;">
    <a style="  " href="q&n.jsp">고객센터</a>
    </div>
    <div style="position: relative; left: 525px; top: 50px;">
    <a style="  " href="login.jsp">로그인</a>
    </div>
     <div style="position: relative; left: 575px; top: 50px;">
    <a style="  " href="research1.jsp">회원가입</a>
    </div>
    
    <%}else{ %>
    <!-- 로그인됨  -->
    <div style="position: relative; left: 400px; top: 50px;">
    <a style="  " href="generic.jsp">회사소개</a>
    </div>
    <div style="position: relative; left: 450px; top: 50px;">
    <a style="  " href="q&n.jsp">고객센터</a>
    </div>
    <div style="position: relative; left: 500px; top: 50px;">
    <a style="  " href="logout.jsp">로그아웃</a>
    </div>
    <div style="position: relative; left: 550px; top: 50px;">
    <a style="  " href="mypage.jsp">마이페이지</a>
    </div>
    <div style="position: relative; left: 600px; top: 50px;">
    <a style="  " href="research1.jsp">테스트</a>
    </div>
    <%} %>
    </div>

   <!-- Page Wrapper -->


      <!-- Main -->
<article id="main" style="background-color: #0b6d5f;">
                  <header>
                     <h2>MY PAGE</h2>
                  </header>
                  <section class="wrapper style5" style="background-color: beige;">
                     <div class="inner">
               <section>
            <div>
                  <ul class="actions">
                     <li ><a href="update.jsp" class="button large"style="width: 600px; height:300px; text-align: center;"><br> 회원정보 수정　</a></li>
                     
                     <li><a href="alarm.jsp" class="button large" style="width: 600px; height:300px; text-align: center;"><br>복용시간 알림설정</a></li>
                  </ul>

                  </ul>
                  <ul class="actions">
                     <li><a href="#" class="button large"style="width: 600px; height:300px; text-align: center;"><br>설문결과 다시보기</a></li>
                  
                     <li><a href="myqna.jsp" class="button large"style="width: 600px; height:300px; text-align: center;"><br>나의 Q&A</a></li>
                  </ul>
               </div>
</section>
</div>
</section></article>
 <footer id="footer">
    	<div class="footer">
     		<div><img   class="footerLogo" src="assets/css/img3/logo.png"></div>
        	<div class="text">Copyright ⓒ Health Plus (주)선생님 더워요</div>
	    </div>
      </footer>

   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.scrollex.min.js"></script>
   <script src="assets/js/jquery.scrolly.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>

   <!-- 로그인 -->



</body>
</html>