<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
<!DOCTYPE html>
<html>
<style>
s
#main>section>div>section>h4 {
   font-size: 30px;
}

li {
   list-style: none;
}

.header {
   display: flex;
   font-family: S-CoreDream-4Regular;
   width: 100%;
   height: 10vh;
   background-color: beige;
}

.logo {
   display: flex;
   flex-direction: start;
   width: 15%;
   height: 60%;
   margin: 2vh;
}

section.wrapper.style5 {
   background-color: beige;
   color: black;
}

.footer {
   /* padding-bottom: 10px;
padding-top: 20px; */
   background-color: green;
   display: flex;
   align-items: center;
   height: 20px;
   ;
}

a {
	color : black;
}

</style>
<script type="text/javascript">
   
</script>
<head>
<title>HEALTH PLUS - UPDATE</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
   <link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

   <!-- Page Wrapper -->


   <!-- Header -->
   <div class="header">
      <a href="index.jsp" class="logo"><img src="assets/css/img3/logo.png"></a>
	
	<%if(member == null){ %>
    <div style="position: relative; left: 500px; top: 50px;">
    <a style="" href="generic.jsp">회사소개</a>
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



   <!-- Main -->
   <article id="main">

      <section style="background-color: beige" class="wrapper style5"padding-bottom: 0px;>
         <div class="inner" style="background-color: beige">

            <section>
               <h4>회원정보수정</h4>

               <hr />

               <form method="post" action="researchNext">


                  <div class="col-6 col-12-small">
                     <ul class="1actions">
                        <h4>
                           아이디
                           <h4>
                              <li style="width: 300px;"><input type="text" name="id"
                                 id="demo-name" value="" placeholder="변경할 ID를 입력하세요."></li>
                              <br>
                              <h4>
                                 비밀번호
                                 <h4>
                                    <li style="width: 300px;"><input type="text" name="pw"
                                       id="demo-name" value="" placeholder="변경할 비밀번호를 입력하세요."></li>
                                    <br>
                                    <h4>
                                       닉네임
                                       <h4>
                                          <li style="width: 300px;"><input type="text"
                                             name="nick" id="demo-name" value=""
                                             placeholder="변경할 닉네임을 입력하세요."></li> <br>
                                          <h4>
                                             나이
                                             <h4>
                                                <li style="width: 300px;"><input type="text"
                                                   name="age" id="demo-name" value=""
                                                   placeholder="변경할 나이를 입력하세요."></li> <br>
                                                <h4>
                                                   휴대폰번호
                                                   <h4>
                                                      <li style="width: 300px;"><input type="text"
                                                         name="tel" id="demo-name" value=""
                                                         placeholder="변경할 휴대폰번호를 입력하세요."></li> <br>
                                                      <h4>
                                                         생일
                                                         <h4>
                                                            <li><input type="date" name="birth"
                                                               id="demo-name" value=""></li> <br> <br>
                                                            <br>


                                                            <li
                                                               style="display: inline-block; margin-left: 500px; width: 40px"><input
                                                               type="submit" value="수정 완료" class="primary" /></li>
            </section>
            </form>
            </ul>


         </div>
         </div>

         </form>
</body>


</html>