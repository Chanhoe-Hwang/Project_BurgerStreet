<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    

<link rel="stylesheet" type="text/css" href="css/memberJoinForm.css" >
<script src="script/jquery-3.5.1.js"></script>
<script type="text/javascript" src="<c:url value='script/member.js' />"></script>
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header.jsp" %>    


    <div id="first">
		<div id="first_view" >		
			<a href="/">Home</a> >  
            <a href="loginForm">
            <span>로그인</span></a> >
                <a href="joinForm"><span>회원가입</span></a> >
            <a><span>상세페이지</span></a>
		</div>
      </div>
      
 <form name="frm" method="post" action="memberJoin">     
<div class="main_wrap1">

<div class="contractWrap">
<div class="webContainer">
    <div class="join">
        <h2 class="join_title">회원가입</h2>
    </div><label style="font-size:110%;font-weight:bold;color:red;">${message}<br></label>
    <div class="agreement">
        <h5 class="title_img">
        <img src="image/Mimage/generallogin.png"> 
            <span>기본정보</span> <!--  -->
        </h5>
    </div>

    <div class="contractJoin">
        <div class="box1">
            <span>회원정보를 입력해 주세요</span>
        </div>    
        <div class="box2">
            <div class="emailBox"><span>아이디</span></div>    
            <div class="emailBox2">
            <label>
                <input id= "txt" class="inputBox" type="text" placeholder="아이디" name="id" value="${dto.id }">
                <button class="txt_del" style="display: none;" type="button" tabindex="-1" onclick=" clearInput()">
                <span>입력 텍스트 삭제</span>
                </button> 
            </label>
            </div>
        <div class="emailBox"><span>이름</span></div>
           <div class="emailBox2">
                <input id= "txt" class="inputBox" type="text" placeholder="이름"  name="name" value="${dto.name }">
            	<button class="txt_del" style="display: none;" type="button" onclick=" clearInput()">
                <span>입력 텍스트 삭제</span>
                </button> 
            </div>
        <div class="emailBox"><span>휴대폰 번호</span></div>
           <div class="emailBox2">
            <label>
                <input id= "txt" class="inputBox" type="text" placeholder="휴대폰 번호" name="phone" value="${dto.phone }">
           		<button class="txt_del" style="display: none;" type="button" onclick=" clearInput()">
                <span>입력 텍스트 삭제</span>
                </button> 
           </label>
           </div>
        <div class="emailBox"><span>이메일</span></div>
           <div class="emailBox2">
                <input id= "txt" class="inputBox" type="text" placeholder="사용 가능한 이메일 주소를 입력해 주세요. (예: name@mail.com)"  name="email" value="${dto.email}">
            	<button class="txt_del" style="display: none;" type="button" onclick=" clearInput()">
                <span>입력 텍스트 삭제</span>
                </button> 
            </div>
        </div>
    </div>

    <div class="agreement">
        <h5 class="title_img">
        <img src='image/Mimage/simplelogin.png'>
            <span>비밀번호 입력</span>
        </h5>
    </div>
    
    <div class="contractJoin02">
       <div class="box3"> 
              <div class="box4">
               <span>비밀번호</span>
              </div>  
               <div class="emailBox2">
                <label> 
                    <span class= hide>비밀번호</span>
                    <input class="inputBox" type="password" placeholder="비밀번호, 영문, 숫자, 특수문자 조합(10~20자 사이)" name="pwd"
                    style="background: url('image/Mimage/login_underline.png') repeat-x 0 100%;">
                    <button class="btn_view" type="button" tabindex="-1" style="background: url('image/Mimage/lookpassword.png') no-repeat 50%;">
                        <span>입력 텍스트 보기</span>
                    </button>
                <p class="txt"><span>사용할 비밀번호를 
                입력해 주세요</span></p>    
                </label>
              </div>  
        </div>
        <div class="box3"> 
           <div class="box4">
              </div>  
            <div class="emailBox2">   
                <label>   
                    <span class=hide>비밀번호 확인</span>
                    <input class="inputBox" type="password" placeholder="비밀번호 확인" name="pwdCheck"
                    style="background: url('image/Mimage/login_underline.png') repeat-x 0 100%;">
                    <button class="btn_view" type="button"  tabindex="-1" style="background: url('image/Mimage/lookpassword.png') no-repeat 50%;">
                        <span>입력 텍스트 보기</span>
                    </button>
                    <p class="txt"><span>비밀번호를 다시한번 입력해 주세요.</span></p> 
                </label>     
            </div>  
        </div>
    </div>        
        <div class="p_verify">        		
           		<input type="submit" class="verify_btn" value="회원가입" 
           		style="background: #f2ebe6 url('image/Mimage/button_background.png')no-repeat 50%;"/> 
        </div>
      
</div>
</div>


</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %> 
</form>
     	