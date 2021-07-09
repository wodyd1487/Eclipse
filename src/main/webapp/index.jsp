
<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% MemberDTO member = (MemberDTO)session.getAttribute("member"); 

%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HEALTH PLUS</title>
    <link rel="stylesheet" href="assets/css/stylesheet/main.css"/>
</head>
<body>
    <div class="header">
    <a class="logo" href="index.jsp"><img src="assets/css/img3/logo.png"></a>
 	
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
    <a style="  " href="join.jsp">회원가입</a>
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

  
    <!-- <nav id="nav">
            <ul>
               <li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
                  <div id="menu">
                     <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="generic.jsp">Company</a></li>

                        <li><a href="q&n.jsp">Q&A</a></li>
                        
                                     <li><a href="#">회원관리</a></li>
                                     
                                     <li><a href="#">개인정보수정</a></li>
                                     <li><a href="logout.jsp">로그아웃</a></li>
                                    
                                    <li><a href="login.jsp">Login</a></li>
                                   
                     </ul>
                  </div></li>
            </ul>
         </nav> -->
    
    
          <!-- Banner -->
		<div id="banner">
			<div class="inner">
				<div class="title">HEALTH PLUS</div>
				<div class="content">
                <div>건강에 건강을 더하다.</div>
                <div>무료로 부족한 영양소를 채워보세요.</div>
                <div>여러 문항의 설문을 통해 몸의 부족한 영양소를 추천해드립니다.</div>
                </div>
				<div class="actions">
					<button><a href="research1.jsp" class="button primary">시작하기</a></button>
                </div>
			</div>
		</div>

    <div class="inner02">
			    <div class="title02"> 
                    임산부 초기, 중후기, 고혈압 및 당뇨환자 고객님들을 따로 분류하여 부작용 걱정 없는 영양제 추천 서비스를 제공합니다.</div>
                <div class="content02">고객님들의 몸 상태에 맞는 적합한 영양소를 추천해 드립니다.<br/><br/>
                    Health Plus는 언제나 고객님들의 만족을 최우선으로 생각하고 또 생각하겠습니다.</div>
			    <div class="icon">
                    <img src="assets/css/img3/01.png" width="320vh" height="320vh">
                    <img src="assets/css/img3/02.png" width="320vh" height="320vh">
                    <img src="assets/css/img3/03.png" width="320vh" height="320vh">
                </div>
    </div>

    <div class="inner03">
        <div class="part01">
            <div class="img"><img src="assets/css/img3/jy.jpg" width="65%" height="100%"></div>
            <div class="imgcontent"><h2>"</h2>내 몸에 딱 필요한 영양소만 알려줘요.<br/><br/>서지연님, 24세, 승무원 / Health plus 1년차</div>
        </div>
        <div class="part02">
            <div class="imgcontent"><h2>"</h2>건강을 위한 가장 쉬운 방법 같아요.<br/><br/>신재용님, 28세, 영화배우 / Health plus 2년차</div>
            <div class="img"><img src="assets/css/img3/gjy.jpg" width="65%" height="100%"></div>
        </div>
        <div class="part03">
            <div class="img"><img src="assets/css/img3/sh.jpg"  width="65%" height="100%"></div>
            <div class="imgcontent"><h2>"</h2>헬스플러스가 매일 챙겨주는 느낌이 좋아요.<br/><br/>박성현님, 26세, 디자이너 / Health plus 6개월차</div>
        </div> 
    </div>

    <div class="inner04">
            <div class="contentTop">
                <br/><br/><br/><br/>
                <div class="title02">health plus의 회원이 된다면 이런 혜택이 주어져요.</div>
                <div class="content02"><br/><br/>헬스 플러스는 고객님들에게 무상으로 영양소 조회 무료 서비스를 제공해 드린 뒤<br /> <br/>부족한 영양소를 보충해줄
                    영양제를 추천해 드립니다.</div>
            </div>
            <div class="contentBootom">
                <div class="btTop">
                <div class="box">
                    <div><img src="assets/css/img3/like.png" width="100vh" height="100vh"></div>
                    <div class="bold">BEST&WORST 궁합 영양제 추천</div>
                    <div class="light">고객님께 적합한 영양제를 추천해 드림과 동시에<br/><br/>같이 먹을 때 궁합이 좋은 영양제와<br/> <br/>궁합이 나쁜 영양제를
                        같이 알려드립니다.</div>
                </div>
                <div class="box">
                    <div><img src="assets/css/img3/tip.png" width="100vh" height="100vh"></div>
                    <div class="bold">영양제별 섭취 TIP 제공</div>
                    <div class="light">영양제별로 어느 시간에 섭취하면 좋은지 팁을 제공해 드립니다. <br/> <br/>EX) 식전, 식후 30분, 취침 전</div>

                </div>
                <div class="box">
                    <div><img src="assets/css/img3/coin.png" width="100vh" height="100vh"></div>
                    <div class="bold">함량이 높은 & 가격이 합리적인 제품 추천</div>
                    <div class="light">추천해 드리는 제품들을 선별할 때 가장 함량이 높은 시중 제품과<br/><br/>함량기준 가격이 가장 합리적인 제품들을
                        추천해 드립니다.
                    </div>
                </div>
            </div>
            <div class="btBt">
                <div class="box">
                    <div><img src="assets/css/img3/write.png" width="100vh" height="100vh"></div>
                    <div class="bold">규칙적인 영양제 섭취습관 생성</div>
                    <div class="light">필요시마다 설문을 제공하여 필요한 영양제들의<br/><br/>규칙적인 섭취습관의 생성에 도움을 드립니다.</div>
                </div>
                <div class="box">
                    <div><img src="assets/css/img3/gard.png" width="100vh" height="100vh"></div>
                    <div class="bold">불필요한 영양제의 과다섭취 예방</div>
                    <div class="light">설문을 통하여 필요한 영양제와 불필요한 영양제를<br/><br/>구별하여 내 몸에 꼭 필요한 영양제만 섭취할 수<br/><br/>있도록
                        도움을 드립니다.
                    </div>
                </div>
                <div class="box">
                    <div><img src="assets/css/img3/qna.png" width="100vh" height="100vh"></div>
                    <div class="bold">Q&A창을 통한 문의사항 해결</div>
                    <div class="light">Q&A창을 통해 현재 복용중인 영양제와<br/><br/> 동시 복용이 되는지 등의 궁금한 문의사항을<br/><br/>24시간 이내 답변해 드립니다.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div><img   class="footerLogo" src="assets/css/img3/logo.png"></div>
        <div class="text">Copyright ⓒ Health Plus (주)선생님 더워요</div>
    </div>
</body>
</html>