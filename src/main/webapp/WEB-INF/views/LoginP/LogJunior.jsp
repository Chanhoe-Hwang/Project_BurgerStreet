<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header2.jsp" %>    

<%@ include file="/WEB-INF/views/LoginP/blackbar2.jsp" %>    

	<div id="first">
		<div id="first_view" >		
			<a href="/">Home</a> > 메뉴소개 
		</div>
	</div>
	<div id="second">
		<div id="second_view">
			<div id="second_left">
				<h1 style="font-weight:bold;">메뉴 소개</h1>
			</div>
			<div id="second_right">
				<ul class="ul01">
               		<li class="Menu" onClick="location.href='Detail1'">스페셜&할인팩</li>
	               	<li class="Menu" onClick="location.href='Detail2'">프리미엄</li>
	               	<li class="Menu" onClick="location.href='Detail3'">와퍼</li>
              		<li class="Menu" style="color:red; border-bottom:3px solid red;" onClick="location.href='Detail4'">주니어&버거</li>
               		<li class="Menu" onClick="location.href='Detail5'">올데이킹&치킨버거</li>
               		<li class="Menu" onClick="location.href='Detail6'">사이드</li>
              		<li class="Menu" onClick="location.href='Detail7'">음료&디저트</li>
           </ul>
			</div>
		</div>
	</div>
	
	<div id="third">
		<div id="third_view">			
				<article>
  			 
			   	<c:forEach items="${productKindList }"  var="productVO">
			   		 <div id="item">
						<a href="cartInsert?pseq=${productVO.pseq}">
							<img src="<c:url value='image/product/${productVO.image}' />"/>
							<div style="font-size:120%;">${productVO.name}</div>
							<div style="font-size:80%;color:gray;">${productVO.content}</div>
							<div style="font-size:120%;color:red;">${productVO.price}</div>
						</a>
			   		</div>
			   	</c:forEach>
			   	
   					<div class="clear"></div>
				</article>		
		</div>	
	</div>
	





<%@ include file="/WEB-INF/views/LoginP/notice.jsp" %>    

<%@ include file="/WEB-INF/views/include/footer_top.jsp" %>    
<%@ include file="/WEB-INF/views/include/footer.jsp" %>   