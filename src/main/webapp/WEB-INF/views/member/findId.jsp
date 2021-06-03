<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<link rel="stylesheet" type="text/css" href="css/findIdPw.css" >
<script src="script/jquery-3.5.1.js"></script>
<script type="text/javascript" src="<c:url value='script/member.js' />"></script>
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header.jsp" %>    

      <!--location-->
      <div id="first">
		<div id="first_view" >		
			<a href="">Home</a> >  <a href="/login">로그인 </a> >  아이디/비밀번호 찾기
		</div>
      </div>
<form method="post" name="frm" action="lookupId">
<div class="main_wrap">
     
      
    <div class="contractWrap">
    <div class="webContainer">
        <div class="join">
            <h2 class="join_title">아이디/비밀번호 찾기 </h2>
        </div>
        
        <div class="tab">
        <div class="click">
            <ul>
                <li data-id="con1" class="on">아이디 찾기</li>	
                <li data-id="con2" >비밀번호 찾기</li>	
            </ul>
        </div>    
        <!-- 아이디찾기 -->
        <div id= "con1" class="contractJoin on"> <!--  -->
            <div class="box1">
                <p>가입시 회원정보로 등록한 이름과 휴대폰 번호를 입력해 주세요.</p>
            </div>   
            <div class="box2"> 
                <div class="box3">
                <div class="emailBox"><span>이름</span></div>
                   <div class="emailBox2">
                        <input class="inputBox" type="text" placeholder="이름"  name="name" >
                         <button class="txt_del" style="display: none;" type="button">
                        <span>입력 텍스트 삭제</span></button> 
                         <p class="txt"><span>이름을 입력해주세요.</span></p>    	
                    </div>
                </div>
                <div class="box4">
                <div class="emailBox"><span>휴대폰 번호</span></div>
                   <div class="emailBox2">
                        <input class="inputBox" type="text" placeholder="휴대폰 번호" name="phone" value="${phone }">
                         <button class="txt_del" style="display: none;" type="button">
                        <span>입력 텍스트 삭제</span></button> 
                        <p class="txt"><span>휴대폰 번호를 입력해 주세요.</span></p>    
                   </div>         
                                   
                </div>
            
            </div>
            <ul class = "txt2">
                <li> 가입 시 입력한 이름과 휴대폰번호로 아이디 정보를 찾을 수 있습니다.</li>
                <li>네이버, 카카오톡, 삼성 앱카드, 애플아이디로 가입하신 회원님께서는 해당 서비스에서 아이디/비밀번호 찾기를 진행해 주세요.</li>
            </ul>
            
        <div class="verify">
            <div class="p_verify" style="text-align:center;">
                <input type="submit" class="verify_btn" value="아이디 찾기" onClick="location.href='completeIdPw'"/> 
            	<span>${msg }</span>
            </div>
        </div> 
    </div>    
    
        <!--비밀번호 찾기-->
        <div id="con2" class="contractJoin"> <!--  -->
            <div class="box1">
                <p>회원님의 정보(이메일)로 비밀번호 재설정을 위한 경로를 보내 드립니다.</p>
            </div>   
            <div class="box2"> 
                <div class="box3">
                <div class="emailBox"><span>이름</span></div>
                   <div class="emailBox2">
                        <input class="inputBox" type="text" placeholder="이름"  name="id" >
                         <button class="txt_del" style="display: none;" type="button">
                        <span>입력 텍스트 삭제</span></button> 
                         <p class="txt"><span>이름을 입력해주세요.</span></p>    	
                    </div>
                </div>
                <div class="box4">
                <div class="emailBox"><span>이메일 주소</span></div>
                   <div class="emailBox2">
                    <label>
                        <input class="inputBox" type="text" placeholder="이메일 주소" name="email" value="${email }">
                         <button class="txt_del" style="display: none;" type="button">
                        <span>입력 텍스트 삭제</span></button> 
                         <p class="txt"><span>이메일 주소를 입력해 주세요.</span></p>    
                   </label>
                   </div>
                </div>
            </div>
            <ul class = "txt2">
                <li> 가입시 입력한 이메일로 비밀번호 재설정을 위한 경로가 발송 됩니다.</li>
                <li>네이버, 카카오톡, 삼성 앱카드, 애플아이디로 가입하신 회원님께서는 해당 서비스에서 아이디/비밀번호 찾기를 진행해 주세요.</li>
            </ul>
            
        <div class="verify">
            <div class="p_verify">
                <input type="submit" class="verify_btn" value="비밀번호 찾기" onClick="location.href='completeIdPw'"/> 
            	<span>${msg }</span>
            </div>
        </div>
      </div>
    </div>
     
           
        </div>
     </div>
	</div>  			
<%@ include file="/WEB-INF/views/include/footer.jsp" %>      
</form>   