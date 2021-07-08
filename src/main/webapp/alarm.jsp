<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
   Spectral by jsp5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>HEALTH PLUS</title>
<meta charset="EUC-KR" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
   <link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<style>
h4{
 font-size: xx-large;
}
</style>
<body class="is-preload">

   <!-- Page Wrapper -->
   <div id="page-wrapper">

      <!-- Header -->
      <header id="header">
      	<div>
		<a class="logo" href="index.jsp"><img src="assets/css/img3/logo.png"></a>
		</div>
         <nav id="nav">
            <ul>
               <li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
                  <div id="menu">
                     <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="generic.jsp">Company</a></li>
                        <li><a href="q&n.jsp">Q&A</a></li>
                        <li><a href="login.jsp">Sign Up</a></li>
                        <li><a href="#">Log In</a></li>
                     </ul>
                  </div></li>
            </ul>
         </nav>
      </header>

      <!-- Main -->
      <article id="main">
         <header>
            <h2>복용시간 알리미</h2>
            <p>영양제의 특징에 따라서 복용시간을 알려드릴게요 :)</p>
           
         </header>
         <section class="wrapper style5">
            <div class="inner">
               <section>
               <br>
                  <h3>알람 설정</h3>
                  <form method="post" action="#">
                     <div class="row gtr-uniform">
                        <div class="col-6 col-12-xsmall">
                           <input type="text" name="demo-name" id="demo-name" value=""
                              placeholder="Name" />
                        </div>
                        <div class="col-6 col-12-xsmall">
                           <input type="email" name="demo-email" id="demo-email" value=""
                              placeholder="Phone Number" />
                        </div>
                        <div class="col-12">
                           <select name="demo-category" id="demo-category">
                              <option value="">- Time -</option>
                              <option value="1">07:00AM</option>
                              <option value="1">08:00AM</option>
                              <option value="1">09:00AM</option>
                              <option value="1">12:00AM</option>
                              <option value="1">06:00PM</option>
                              <option value="1">09:00PM</option>
                           </select>
                        
                        </div>
                        <div class="col-6 col-12-small">
                           <input type="checkbox" id="demo-copy" name="demo-copy">
                           <label for="demo-copy">매일 알람을 보내주세요.</label>
                        </div>
                        <div class="col-6 col-12-small">
                           <input type="checkbox" id="demo-human" name="demo-human">
                               <label for="demo-human">일주일에 한번씩 보내주세요.</label>
                        </div>
                        <div class="col-12">
                           <textarea name="demo-message" id="demo-message"
                              placeholder="Enter your message" rows="6"></textarea>
                        </div>
                        <div class="col-12">
                           <ul class="actions">
                              <li><input type="submit" value="확인"
                                 class="primary" /></li>
                              <li><input type="reset" value="취소" /></li>
                           </ul>
                        </div>
                     </div>
                  </form>
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

	<!-- Footer -->
	<!-- <footer id="footer">
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
	</footer> -->

   </div>

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