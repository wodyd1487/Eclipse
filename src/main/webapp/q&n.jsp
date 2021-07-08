
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
   Spectral by jsp5 UP
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
h4{
 font-size: xx-large;
}
</style>
<body class="is-preload">

   <!-- Page Wrapper -->
   <div id="page-wrapper">

      <!-- Header -->
      <header id="header">
         <h1>
<<<<<<< HEAD
            <a href="index.jsp">Spectral</a>
=======
            <a href="index.jsp">HEALTH PLUS</a>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-5/teacherhot.git
         </h1>
         <nav id="nav">
            <ul>
               <li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
                  <div id="menu">
                     <ul>
                        <li><a href="index.jsp">Home</a></li>
								<li><a href="generic.jsp">Generic</a></li>
								<li><a href="q&n.jsp">Elements</a></li>
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
            <h2>Q&A</h2>
            <p>영양제에 관련된 문의사항에 대하여 빠른 시간 내에 답해드립니다.</p>
         </header>
         <section class="wrapper style5">
            <div class="inner">

               <section>
                  <h4>Q&A</h4>
                  <p>
                     영양제를 섭취하면서 생기는 궁금증들이 많을 것이라 생각해요.<br> 누구나 처음 영양제를 섭취 할 때 겪는
                     어려움 중 하나죠.<br> 그래서 Health plus는 고객님들의 눈높이에 맞추어 Q&A창을 제작하게
                     되었어요.
                  </p>
                  <hr />
                  <header>
                     <h4>자주 묻는 질문</h4>
                     <h5>Q. 현재 진통제를 복용하고 있는데 비타민제와 함께 복용해도 될까요?</h5>
                     
                     <p>A. 진통제와 비타민제는 서로 큰 영향을 미치지 않습니다. 다만 몸에 부담을 덜기 위해 1시간 정도
                        간격을 두고 섭취해주시는 것이 좋아요.</p>
                        
                        <br>
                        
                        
                     <h5>Q. 현재 다이어트약(가르시니아)을 복용하고 있는데 밀크씨슬과 함께 복용해도 될까요?</h5>

                     <p>A. 두 가지 모두 간과 관련되어있는 약품이라 고민이 되셨다고 생각합니다. 같이 복용해도 간에 큰 무리가
                        되지는 않지만, 가르시니아는 식전에 밀크씨슬은 식후에 섭취하시는 것을 추천드립니다.</p>
                        
                     <h5>더 궁금한 점이 있다면 아래 FORM을 통하여 궁금한 질문을 보내주세요 :)</h5>
                     
                     <br>
                     
                     
                  </header>

               <section>
               <br>
                  <h3>Form</h3>
                  <form method="post" action="#">
                     <div class="row gtr-uniform">
                        <div class="col-6 col-12-xsmall">
                           <input type="text" name="demo-name" id="demo-name" value=""
                              placeholder="Name" />
                        </div>
                        <div class="col-6 col-12-xsmall">
                           <input type="email" name="demo-email" id="demo-email" value=""
                              placeholder="Email" />
                        </div>
                        <div class="col-12">
                           <select name="demo-category" id="demo-category">
                              <option value="">- Category -</option>
                              <option value="1">복용법</option>
                              <option value="1">부작용</option>
                              <option value="1">질병 관련</option>
                              <option value="1">기타</option>
                           </select>
                        
                        </div>
                        <div class="col-6 col-12-small">
                           <input type="checkbox" id="demo-copy" name="demo-copy">
                           <label for="demo-copy">회원</label>
                        </div>
                        <div class="col-6 col-12-small">
                           <input type="checkbox" id="demo-human" name="demo-human">
                               <label for="demo-human">비회원</label>
                        </div>
                        <div class="col-12">
                           <textarea name="demo-message" id="demo-message"
                              placeholder="Enter your message" rows="6"></textarea>
                        </div>
                        <div class="col-12">
                           <ul class="actions">
                              <li><input type="submit" value="Send Message"
                                 class="primary" /></li>
                              <li><input type="reset" value="Reset" /></li>
                           </ul>
                        </div>
                     </div>
                  </form>
               </section>

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

   <!-- 로그인 -->



</body>
</html>