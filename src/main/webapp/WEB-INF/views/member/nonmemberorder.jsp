<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<link rel="stylesheet" type="text/css" href="css/nonmemberorder.css" >
<script src="script/jquery-3.5.1.js"></script>
<script type="text/javascript" src="<c:url value='script/member.js' />"></script>
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header.jsp" %>    
<form>      

     
      <!--location-->
      <div id="first">
		<div id="first_view" >		
			<a href="">딜리버리</a> >  <a href="/login">로그인 </a> > 비회원 주문
		</div>
      </div>
<div class="main_wrap">
    <div class="contractWrap">
    <div class="webContainer">
        <div class="join">
            <h2 class="title_img">비회원 주문</h2>
        </div>

        <div class="tab">
	        <div class="click">
		        <div class="join">
	            	<h3 class="title_img"><img src='/image/Mimage/order.png'>개인정보수집</h3>
	        	</div>
       		<div class="contractJoin"> 
	            <div class="box2"> 
                	<div class="checkbox">
                            <label class="checkbox01">
				                <input type="checkbox" id="required_check" class="check01 " name="agree" required> 
				                <span>버거킹 이용약관</span> 
				            </label>
				            <button id="click" type="button">
				                <span>상세보기</span>
				            </button>
				    </div>      
	                <div class="hide_box">
	                	<p><strong>수집하는 개인정보 항목</strong>
	                	<br>- 전화번호, 성명, 주소
	                	</p>
	                	<p><strong>수집 목적</strong>
	                	<br>① 성명, 주소: 제품의 전달, 청구서, 정확한 제품 배송지의 확보.
	                	</p>
	                	<p><strong>개인정보 보유기간</strong>
	                	<br>
	                	① 계약 또는 청약철회 등에 관한 기록 : 6개월
						② 대금결제 및 재화 등의 공급에 관한 기록 : 1년
						③ 소비자의 불만 또는 분쟁처리에 관한 기록 : 1년
	                	</p>
	                	<p>
	                	<strong>
						비회원 주문 시 제공하신 모든 정보는 상기 목적에 필요한 용도 이외로는 사용되지 않습니다. 기타 자세한 사항은 '개인정보처리방침'을 참고하여주시기 바랍니다.
	          			</strong>
	                	</p>
	                </div>
            	</div>
            </div>
            
	        </div>    
            </div>
            
            
        <!-- 비회원 설정 -->
        <div class = "join">
        <h3 class="title_img" ><img src='/image/Mimage/setting.png'>비밀번호 설정</h3>
        </div>
        <div class="contractJoin"> 
            <div class="box2"> 
                <div class="box3">
                <div class="emailBox"><span>이름</span></div>
                   <div class="emailBox2">
                   <label>
                        <input id= "txt" class="inputBox" type="text" placeholder="받는 분의 이름을 입력해주세요"  name="name" value="${dto.name }">
                         <button class="txt_del" style="display: none;" type="button"  tabindex="-1" onclick=" clearInput()">
                        <span>입력 텍스트 삭제</span></button>  
                   </label>     
                   </div>
                </div>
                <div class="box4">
                <div class="emailBox"><span>휴대폰 번호</span></div>
                   <div class="emailBox2">
                    <label>
                        <input  id="txt"class="inputBox" type="text" placeholder="핸드폰번호를 입력해주세요" name="phone" value="${dto.phone }">
                         <button class="txt_del" style="display: none;" type="button" tabindex="-1" onclick=" clearInput()">
                        <span>입력 텍스트 삭제</span></button> 
                   </label>
                   </div>
                </div>
            </div>
        </div>    
        <div class="verify">
            <div class="p_verify">
                <input type="button" class="verify_btn" value="인증번호 발송" onClick="Number();"/> 
            </div>
        </div> 
    
    
        <!--주문서 비밀번호-->
        <div class = "join">
        <h3 class="title_img" ><img src='/image/Mimage/key.png'>주문서 비밀번호</h3>
        </div>
        <div class="contractJoin"> 
            <div class="box1">
                <p>주문 내역 확인을 위한 비밀번호를 입력하세요.</p>
            </div>   
            <div class="box2"> 
               <div class="box3"> 
	              <div class="emailBox">
	               <span>비밀번호</span>
	              </div>  
	               <div class="emailBox2">
	                <label> 
	                    <span class= hide>비밀번호</span>
	                    <input class="inputBox" type="password" placeholder="4~6자리 이내의 숫자로만 입력하세요." name="pwd">
	                    <button class="btn_view" type="button" tabindex="-1">
	                        <span>입력 텍스트 보기</span>
	                    </button>
	                </label>
	              </div>  
	        </div>
	        <div class="box3"> 
	        	<div class = "emailBox"></div>
	            <div class="emailBox2">   
	                <label>   
	                    <span class=hide>비밀번호 확인</span>
	                    <input class="inputBox" type="password" placeholder="비밀번호를 다시 입력하세요" name="pwdCheck">
	                    <button class="btn_view" type="button"  tabindex="-1">
	                        <span>입력 텍스트 보기</span>
	                    </button>
	                </label>     
	            </div>  
	        </div>
       </div>     
    </div>   
        <div class="verify">
            <div class="p_verify">
                <input type="button" class="verify_btn" value="비회원 주문" onClick="location.href='Detail1'"/> 
            </div>
        </div>
      
    
     
           
    
     </div>
	</div>  	
	
</div>			
<%@ include file="/WEB-INF/views/include/footer.jsp" %>         
</form>