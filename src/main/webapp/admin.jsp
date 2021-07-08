<!DOCTYPE HTML>
<!--
   Spectral by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                  <h1><a href="index.html">Spectral</a></h1>
                  <nav id="nav">
                     <ul>
                        <li class="special">
                           <a href="#menu" class="menuToggle"><span>Menu</span></a>
                           <div id="menu">
                              <ul>
                                 <li><a href="index.html">Home</a></li>
                                 <li><a href="generic.html">Generic</a></li>
                                 <li><a href="elements.html">Elements</a></li>
                                 <li><a href="#">Sign Up</a></li>
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
                     <h2>관리자 페이지</h2>
                  </header>
                  <section class="wrapper style5">
                     <div class="inner">


                        <section>
                           <h3>Q&A</h3>
                           <h5>QUESTION</h5>
                           <div class="table-wrapper">
                              <table>
                                 <thead>
                                    <tr>
                                       <th>이름</th>
                                       <th>문의사항</th>
                                       <th>날짜</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>서지연</td>
                                       <td>비타민D를 아침 공복에 섭취해도 될까요??</td>
                                       <td>2021-07-01</td>
                                    </tr>
                                    <tr>
                                       <td>신재용</td>
                                       <td>음주 후에 밀크씨슬 섭취가 가능한가요?</td>
                                       <td>2021-07-03</td>
                                    </tr>
                                    <tr>
                                       <td>김진우</td>
                                       <td>12살 아이의 비타민C 권장량이 알고 싶어요.</td>
                                       <td>2021-07-05</td>
                                    </tr>
                                    
                                 </tbody>
                                 <tfoot>
                                    <tr>
                                       <td colspan="2"></td>
                                       
                                    </tr>
                                 </tfoot>
                              </table>
                           </div>

                           <h5>ANSWER</h5>
                           <div class="table-wrapper">
                              <table class="alt">
                                 <thead>
                                    <tr>
                                       <th>이름</th>
                                       <th>문의사항</th>
                                       <th>날짜</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>운영자</td>
                                       <td>비타민D를 빈 속에 복용하시면 속이 쓰리실 수 있기 때문에 식후에 드시는 것을 추천합니다 :)</td>
                                       <td>2021-07-02</td>
                                    </tr>
                                    <tr>
                                       <td>운영자</td>
                                       <td>밀크씨슬은 음주 전후 섭취가 가능하나, 다음 날 드시는 것을 더 추천드립니다 :)</td>
                                       <td>2021-07-04</td>
                                    </tr>
                                    <tr>
                                       <td>운영자</td>
                                       <td>비타민c는 만 9~13세까지는 하루 45mg을 권장합니다 :)</td>
                                       <td>2021-07-06</td>
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
                              <li><a href="#" class="button">MAIN</a></li>
                              <li><a href="#" class="button">MEMBER PAGE</a></li>
                           </ul>
                        </section>

                        <section>
                           <h4>ANSWER PAGE</h4>
                           <form method="post" action="#">
                              <div class="row gtr-uniform">
                                 <div class="col-6 col-12-xsmall">
                                    <input type="text" name="demo-name" id="demo-name" value="" placeholder="운영자" />
                                 </div>
                                 <div class="col-6 col-12-xsmall">
                                    <input type="email" name="demo-email" id="demo-email" value="" placeholder="날짜" />
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
                                    <input type="checkbox" id="demo-human" name="demo-human" checked>
                                    <label for="demo-human">비회원</label>
                                 </div>
                                 <div class="col-12">
                                    <textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
                                 </div>
                                 <div class="col-12">
                                    <ul class="actions">
                                       <li><input type="submit" value="Send Message" class="primary" /></li>
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
                     <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                     <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                     <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                     <li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
                     <li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
                  </ul>
                  <ul class="copyright">
                     <li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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