<!DOCTYPE HTML>
<%@page import="model.MemberDTO"%>
<%MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
<html>
   <head>
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
      <title>HEALTH PLUS - MEMBER</title>
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

            <!-- Main -->
               <article id="main" style="background-color: #0b6d5f;">
                  <header>
                     <h2>회원 관리 페이지</h2>
                  </header>
                  <section class="wrapper style5" style="background-color: beige;">
                     <div class="inner">


                        <section>
                           <h3>MEMBER PAGE</h3>
                           <h5>INFORMATION</h5>
                           <div class="table-wrapper">
                              <table>
                                 <thead>
                                    <tr>
                                       <th>아이디</th>
                                       <th>이름</th>
                                       <th>핸드폰번호</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>jiyeonprincess</td>
                                       <td>서지연</td>
                                       <td>010-7661-0336</td>
                                    </tr>
                                    <tr>
                                       <td>godjdrageon</td>
                                       <td>신재용</td>
                                       <td>010-8954-7856</td>
                                    </tr>
                                    <tr>
                                       <td>2donghwi</td>
                                       <td>김진우</td>
                                       <td>010-8756-1247</td>
                                    </tr>
                                    <tr>
                                       <td>canada</td>
                                       <td>김동현</td>
                                       <td>010-2345-9821</td>
                                    </tr>
                                    <tr>
                                       <td>pongpongbooin</td>
                                       <td>김상민</td>
                                       <td>010-1478-2569</td>
                                    </tr>
                                    <tr>
                                       <td>bigpepe</td>
                                       <td>이호준</td>
                                       <td>010-3356-7421</td>
                                    </tr>
                                    <tr>
                                       <td>daram2</td>
                                       <td>박성현</td>
                                       <td>010-0440-8779</td>
                                    </tr>
                                    <tr>
                                       <td>kiyomida</td>
                                       <td>오동혁</td>
                                       <td>010-5547-7824</td>
                                    </tr>
                                    <tr>
                                       <td>huniiiis</td>
                                       <td>이명훈</td>
                                       <td>010-3347-1985</td>
                                    </tr>
                                    <tr>
                                       <td>catpapa</td>
                                       <td>이상준</td>
                                       <td>010-8571-6854</td>
                                    </tr>
                                 </tbody>
                                 <tfoot>
                                    <tr>
                                       <td colspan="2"></td>
                                       
                                    </tr>
                                 </tfoot>
                              </table>
                           </div>

                           <h5>회원별 분포도</h5>
                           <div class="table-wrapper">
                              <table class="alt">
                                 <thead>
                                    <tr>
                                       <th>성별</th>
                                       <th>나이</th>
                                       <th>퍼센트</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>여</td>
                                       <td>20대</td>
                                       <td>20%</td>
                                    </tr>
                                    <tr>
                                       <td>남</td>
                                       <td>30대</td>
                                       <td>20%</td>
                                    </tr>
                                    <tr>
                                       <td>남</td>
                                       <td>20대</td>
                                       <td>60%</td>
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
                              <li><a href="#" class="button">UPDATE</a></li>
                              <li><a href="#" class="button">DELETE</a></li>
                           </ul>
                        </section>

                        

                        
                     </div>
                  </section>
               </article>

            <!-- Footer -->
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