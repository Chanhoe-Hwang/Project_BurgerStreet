<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header.jsp" %>  

<link rel="stylesheet" type="text/css" href="css/login.css" >
<script src="script/jquery-3.5.1.js"></script>
<script type="text/javascript" src="<c:url value='script/member.js' />"></script>


  
<form action="login" method="post">	   

     
      <!--location-->
      <div id="first">
		<div id="first_view" >		
			<a href="/">Home</a> > 로그인 
		</div>
      </div>
      
  <div class="main_wrap">    
      <!--login main page-->
      <div class="loginWrap">
	       <div class="webContainer" style="background: url('image/Mimage/bg_login.gif') no-repeat 100% 100%;">
	      
		       <!--weclome message--> 
		        <h2 class="intro">
					<em style="color: red;"> WHERE TASTE IS KING </em><br>
					<span>어서오세요! 버거길입니다.</span>
				</h2>
				
	       <!--login div-->  
	       <div class="main_login">
		        <!--일반로그인-->
		            <fieldset class="login_form">
						<legend >로그인</legend>
		                <h3 class="title_img"><img src="/image/Mimage/generallogin.png"> 
						일반로그인
						</h3>
		           
		               <div class="cont">
							<div class="loginbox">
								<label>
									<span class="hide">ID</span>
									<input id="txt" class="line" type="text" placeholder="아이디" name="id" value="${dto.id}"
									style="background-image:url('/image/Mimage/login_underline.png');"> <!--  -->
									<button class="txt_del" type="button" style="display: none" tabindex="-1" onclick="clearInput()"
									style="background: url('/image/Mimage/delete_txt.png') no-repeat 50%;">
						                <span>입력텍스트 삭제</span> 
									</button>
								</label>
							</div>
							<div class="loginbox">
								<label>
									<span class="hide">Password</span>
									<input class="line" type="password" placeholder="비밀번호" name="pwd"
									style="background-image:url('/image/Mimage/login_underline.png');"> <!-- backgroundline이미지 사용 -->
									<button class="btn_view" type="button" tabindex="-1">
										<span>입력텍스트 보기</span> 
									</button>
								</label>
							</div>
						<div class="login_check">
							<label class="checkbox">
								<input type="checkbox">
								<span>아이디 저장</span> 
							</label>
							<label class="checkbox">
								<input type="checkbox">
								<span>자동로그인</span> 
							</label>
								<span>${message }</span>
						</div>	
						<div class="login_btn button"
						style=""> 
							<input type="submit" class="btn m red" value="로그인" onClick=""/
							style="cursor:pointer;background: url('/image/Mimage/bg_btn_m_red.png') no-repeat 0 0;"> <!-- 딜리버리 홈 -->
							<input type="button" class="btn m black" value="회원가입" onClick="location.href='joinForm'"/
							style="cursor:pointer;background: url('/image/Mimage/bg_btn_m.png') no-repeat 0 0;"> 
						</div>
					
						<div class="login_menu">
							<a href="findId">
								<span>아이디 찾기</span>
							</a> 
							<a href="findId" >
								<span>비밀번호 찾기</span>
							</a>
						</div>
					</div>
		
					</fieldset>
		    
		            
		        <!--간편 로그인-->    
		            <div class="simple_form">
		            <h3 class="title_img" ><img src='image/Mimage/simplelogin.png'>
							간편로그인
						</h3>
						<ul class="list" >
							<li class="naver">
									<a href="https://nid.naver.com/nidlogin.login?mode=form&url=https%3A%2F%2Fwww.naver.com"
									style="background: #1ec800 url('/image/Mimage/logo_naver.gif') no-repeat 21px;"><!--팝업창을 통해 로그인-->
									<span>네이버 로그인</span>
								</a>
							</li>
						</ul>
						<!-- 네이버로그인 폼.jsp만들고 데이터를 member로 연결 -->
						<ul class="list">
							<li class="kakao">
								<a href="https://accounts.kakao.com/login?continue=https%3A%2F%2Fkauth.kakao.com%2Foauth%2Fauthorize%3Fresponse_type%3Dcode%26redirect_uri%3Dhttp%253A%252F%252Fwww.burgerking.co.kr%253A80%252FkakaoLogin%26client_id%3D7fb29396f0f53882878cabebd1287433"
								style="background: #ffeb00 url('/image/Mimage/logo_kakao.gif') no-repeat 21px;">
									<span>카카오 로그인</span>
								</a>
							</li>
						</ul>
						<ul class="list">
							<li class="apple">
								<a href="https://appleid.apple.com/auth/authorize?client_id=kr.co.hybrid.burgerking.apple.login&redirect_uri=https%3A%2F%2Fwww.burgerking.co.kr%2Foauth2%2Fredirect%2Fapple&response_type=code&response_mode=form_post&scope=name+email&state=1ce5e9d9-14ea-466a-b6ff-a2bdbd7252b4"
								style="background: #000 url('/image/Mimage/logo_apple.gif')  no-repeat 21px;">
									<span>애플 로그인</span>
								</a>
							</li>
						</ul>
		            </div>
	        </div>
	           
	    </div>    
    </div>
</div>    

<!-- non-member --> 
<div class="no_member">
	<div class="web_Container">
		<div class="tab">
			<div class ="click">
			<ul>
					<li data-id="con1" class="on" >비회원 주문</li>
               		<li data-id="con2">비회원 주문내역</li>
			 </ul>
			 </div>
		

		 <div id="con1" class="contractJoin on">
			<div class="container02_order">
				<p>회원가입 없이 비회원으로 주문이 가능합니다.</p>
			</div> 
			<div class="verify">
            <div class="p_verify">
                <input type="button" class="verify_btn" value="비회원주문" onClick="location.href='nonmemberorder'"/> 
            </div>
        </div>
	</div>
	
	<div id="con2" class="contractJoin">
			<div class="container02_order">
				<div class="loginbox2">
						<label>
							<span>주문번호</span>
							<input class="line" type="text" placeholder="주문번호 입력" name="ID" > 
							<button class="txt_del" type="button" style="display: none" tabindex="-1" >
							<span>입력텍스트 삭제</span> 
							</button>
						</label>
				</div> 
				
				<div class="loginbox2">
						<label>
							<span>비밀번호</span>
							<input class="line" type="password" placeholder="비밀번호" name="Pass"> 
							<button class="btn_view" type="button" tabindex="-1">
							<span>입력텍스트 보기</span> 
							</button>
						</label>
				</div> 
			</div> 
			<div class="verify">
            <div class="p_verify">
                <input type="button" class="verify_btn" value="조회하기" onClick="location.href='loginForm'"/> 
            </div>
        </div>
	</div>
	</div>
</div>	
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>      	
</form>
