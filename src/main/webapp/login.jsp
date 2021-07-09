<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="assets/css/style.css">
        
        <div class="header">



	<a class="logo" href="index.jsp"><img src="assets/css/img3/logo.png"></a>



    </div>
    </head>
    
    <body>

        <div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="
                    btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">　　　　　　LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">JOIN</button>
                </div>
                <div class="social-icons">
                    <img src="assets/css/img/fb.png" alt="facebook">
                    <img src="assets/css/img/tw.png" alt="twitter">
                    <img src="assets/css/img/gl.png" alt="google">
                </div>
             
                <form id="login" action="LoginCon" method ="post" class="input-group">
                    <input type="text" class="input-field" name="id" placeholder="User ID" required>
                    <input type="password" class="input-field" name="pw" placeholder="Enter Password" required>
                    <input type="checkbox" class="checkbox"><span>아이디 저장</span>
                    <button class="submit">Login</button>
                </form>
                <form id="register" action="JoinCon" method ="post" class="input-group">
                    <input type="text" class="input-field" name="id" id="input_id" placeholder="User ID" required>
                    <input type="button" class="check" value="ID중복체크" onclick="idCheck()"><span id="sp"></span>
                    <input type="password" class="input-field" name="pw" placeholder="Password" required>
                    <input type="text" class="input-field" name="name" placeholder="User Name" required>
                    <input type="text" class="input-field" name="nick" placeholder="User Nickname" required>
                    <input type="text" class="input-field" name="age" placeholder="Age" required>
                    <input type="text" class="input-field" name="gender" placeholder="Gender" required>
                    <input type="text" class="input-field" name="tel" placeholder="Tel" required>
                    <input type="text" class="input-field" name="birth" placeholder="Birthday" required>
         
                    <button class="submit" onclick='location.href="index.jsp"'>Join</button>
                </form>
            </div>
        </div>
        
           
        <div class="footer2">
        
        
    
    </div>
        
        <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/jquery.scrolly.min.js"></script>
      <script src="assets/js/jquery.scrollex.min.js"></script>
      <script src="assets/js/skel.min.js"></script>
      <script src="assets/js/util.js"></script>
      <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
      <script src="assets/js/main.js"></script>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
            
           function idCheck(){
            var input = document.getElementById("input_id");
            //alert(input.value);
            $.ajax({
               type : "post", //데이터 전송방식
               data : {'id' : input.value},
               url : "IdCheckCon",        //데이터를 보낼 서버 페이지
                dataType : "text",      //응답데이터 타입
               // 요청에 성공시 실행할 함수 정의   //true   //false
               success : function(data){
                  //alert(data);
                  document.getElementById("sp");
                  if(data=="true"){
                     sp.innerHTML = "  사용 불가능한 ID입니다."
                  }else{
                     sp.innerHTML = "  사용 가능한 ID입니다."
                  }
               },
               error : function(){
                  alert("요청 실패!");
               }
            });
           }
        </script>
     
    
    </body>
</html>