<!DOCTYPE HTML>

<%@page import="model.MemberDTO"%>
<%MemberDTO member = (MemberDTO)session.getAttribute("member");%>
<!--
   Spectral by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
      <title>HEALTH PLUS - RESEARCH</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
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
   <body class="is-preload">
		<div class="header">
	 <a href="index.jsp" class="logo"><img src="assets/css/img3/logo.png"></a>
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
               <article id="main" style="background-color: #0b6d5f;">
                  <header>
                     <h2>설문결과 다시보기</h2>
                  </header>
                  <section class="wrapper style5" style="background-color: beige">
                     <div class="inner">


                        <section>
                           <h3>설문결과</h3>
                           <div class="table-wrapper">
                              <table>
                                 <thead>
                                    <tr>
                                       <th>이름</th>
                                       <th>필요한 영양소</th>
                                       <th>날짜</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>서지연</td>
                                       <td>비타민D, 유산균</td>
                                       <td>2021-07-01</td>
                                    </tr>
                                    <tr>
                                       <td>서지연</td>
                                       <td>오메가3, 칼슘</td>
                                       <td>2021-07-03</td>
                                    </tr>
                                   
                                    
                                 </tbody>
                                 <tfoot>
                                    <tr>
                                       <td colspan="2"></td>
                                       
                                    </tr>
                                 </tfoot>
                              </table>
                           </div>

                           
                        </section>

                        <section>
                           <!-- <h4>Buttons</h4> -->
                           <ul class="actions">
                              <li><a href="main.jsp" class="button primary">설문 다시하기</a></li>
                              <li><a href="finalpagefolder/result_seeAgain.jsp" class="button">결과 다시보기</a></li>
                           </ul>
                        </section>

                        
                        
                     </div>
                  </section>
               </article>

             <footer id="footer">
    	<div class="footer">
     		<div><img   class="footerLogo" src="assets/css/img3/logo.png"></div>
        	<div class="text">Copyright ⓒ Health Plus (주)선생님 더워요</div>
	    </div>
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