<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<link rel="stylesheet" type="text/css" href="css/completeIdPw.css" >
<script src="script/jquery-3.5.1.js"></script>
<script type="text/javascript" src="<c:url value='script/member.js' />"></script>
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header.jsp" %>    


     
      <!--location-->
      <div id="first">
		<div id="first_view" >		
			<a href="">Home</a> >  <a href="/login">로그인 </a> >  아이디/비밀번호 찾기
		</div>
      </div>
 <div class="main_wrap">     
    <div class="contractWrap">
    <div class="webContainer">
        <div class="join">
            <h2 class="join_title">아이디/비밀번호 찾기</h2>
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
            <div class="box2"> 
                <div class="box3">
                    <div class="emailBox">
                        <strong>아이디 찾기 완료</strong>
                        <p><span>회원님</span>의 아이디는 ${member.id }입니다.</p>
                    </div>
                    <div class="emailBox2">
                         <img src="./image/Mimage/ico_find_idpw.png"> 
                    </div>
                </div>
                <div class="box4">
                   <div class="emailBox3">
                    <div>
            
                   </div>
                   </div>
                </div>
            </div>
            
            <div class="verify">
                <div class="p_verify">
                    <input type="submit" class="btn m red" value="홈바로가기" onClick=""/>
                    <input type="submit" class="btn m black" value="로그인" onClick="location.href='loginForm'"/> 
                </div>    
            </div>
        </div>
            
    
        <!--비밀번호 찾기-->
        <div id="con2" class="contractJoin">    
           <div class="box2"> 
                <div class="box3">
                    <div class="emailBox">
                        <strong>비밀번호 재설정 경로 발송 완료</strong>
                        <p><span>회원님</span>의 이메일로 비밀번호 재설정 경로를 발송하였습니다.</p>
                    </div>
                    <div class="emailBox2">
                           <img src="./image/Mimage/ico_find_idpw.png"> 
                    </div>
                </div>
                <div class="box4">
                   <div class="emailBox3">
                    <div>
            
                   </div>
                   </div>
                </div>
            </div>
            
            <div class="verify">
                <div class="p_verify">
                    <input type="submit" class="btn m red" value="홈바로가기" onClick="main"/>
                    <input type="submit" class="btn m black" value="로그인" onClick="location.href='loginForm'"/> 
                </div>    
            </div>
      </div>
    </div>
     
           
        </div>
     </div>
</div>  			
<%@ include file="/WEB-INF/views/include/footer.jsp" %>   