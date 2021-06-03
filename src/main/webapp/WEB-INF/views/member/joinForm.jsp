<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="css/join.css" >
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header.jsp" %>    

     
      <!--location-->
      <div id="first">
		<div id="first_view" >		
			<a href="/">Home</a> > <a href="/loginForm">로그인 </a> > 회원가입
		</div>
      </div>

<div class="main_wrap">
	  <div class="loginWrap joinWrap">
	       <div class="webContainer">
	      
		       <!--weclome message--> 
		       <div class="intro">
		        <h2> 환영합니다! </h2><br>
					<p>
					<strong>이메일 주소</strong>
					  혹은 
					<strong>SNS계정</strong>
					  으로 간편하게 
					<em>회원가입</em>하세요!
					</p>
					<p>버거길 서비스는 만 14세 이상부터 이용하실 수 있습니다.</p>
				</div>
				
				<div class="main_join">	
						<div class="join">
							<form action="join" method="get">
									<h3 class="title_img"><img src="image/Mimage/generallogin.png">
									이메일 회원가입</h3>
									
								<div class="cont"> <!-- 클라이언트가 요청한 파라미터 -->
									<div class="login_btn">
										<a href="/contract" class="btn btn01"
										style="background: #e22219 url('image/Mimage/bg_btn_pattern.png') repeat-x 0 0;">
											<span> 버거길 회원가입</span>
										</a>
									</div>
								</div>
							</form>
						</div>

						<div class="simple_form">
							<h3 class="title_img"><img src='image/Mimage/simplelogin.png'>
								간편로그인
							</h3>
							<ul class="list">
								<li class="naver">
									<a href="" style="background: #1ec800 url('image/Mimage/logo_naver.gif') no-repeat 21px;">
										<span>네이버 로그인</span>
									</a>
								</li>
							</ul>
							<ul class="list">
								<li class="kakao">
									<a href="" style="background: #ffeb00 url('image/Mimage/logo_kakao.gif')  no-repeat 21px;">
										<span>카카오 로그인</span>
									</a>
								</li>
							</ul>
							<ul class="list">
								<li class="apple">
									<a href="" style="background: #000 url('image/Mimage/logo_apple.gif')  no-repeat 21px;">
										<span>애플 로그인</span>
									</a>
								</li>
							</ul>
						</div>
				</div>		
				
			</div>	
		</div>							
</div>   
<%@ include file="/WEB-INF/views/include/footer.jsp" %>