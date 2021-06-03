<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>   


	<div id="first">
		<div id="first_view" >		
			<a href="/">Home</a> > 메뉴소개 
		</div>
	</div>

	<div id="middle" style="background-image:url('image/Bimage/wood.png');">
	    <div id="middle_view">
	            
	        <div id="middle_center" >                         
	         	<div id="center_left">
	         		<div style="font-size:61px;color:white;font-weight:bold;">${productVO.name }</div>
	         		<div style="font-size:20px;color:white;">${productVO.content }</div>
	         	</div>
	         	<div id="center_right">
	         		<img src="image/product/${productVO.image}" />	         	
	         	</div>            
	        </div>           
	     </div>  
	     	<div id="middle_bottom_view">    
	            <div id="middle_bottom" >
	               <div id="bottom_left" >
	                   <a style="color:white; font-weight: bolder; font-size: 130%" 
	                   			href="detail${productVO.kind}"> 
	                   < 메뉴 목록으로 돌아가기</a>
	               </div>   
	               
	               <div id="bottom_right">
	               
	               		<a href="#open-moda" onclick="scrollDisable()">
	               			<img src="popup/button.png">
	               		</a>	  
	       <!-- 팝업내용 -->
	               	<div id="open-moda" class="modal-window">
						  
						  <div class="popup-view">
						    <div class="popup-top" style="border:1px solid gray">
						    	&nbsp;&nbsp;&nbsp;버거길 원산지 / 영양 분석표 / 알레르기 유발 성분</h2>
						    	 <a href="#modal-close" title="close" class="modal-close" 
						    	 onclick="scrollAble()">X</a>
						    </div>
						    <div class="popup-bottom">
								<img src="image/Bimage/from.png">
								<img src="image/Bimage/from2.png">
								<img src="image/Bimage/from3.png">
								<img src="image/Bimage/from4.png">
								
								
			<!-- 내용 수정가능<div id="pview">
									<div id="pfirst">
										<div class="pfirst_title"></div>
										<div class="pfirst_content">

										</div>
									</div>
									<div id="psecond">
										<div class="psecond_title"></div>
										<div class="psecond_content">

										</div>
									</div>
									<div id="pthird">
										<div class="pthird_title" style="font-weight:bold;">안내사항</div>
										<div class="pthird_content" style="background:white;">										 
1.	각 제품은 원재료의 수급 상황에 따라 구성성분이 다소 변경될 수도 있습니다.<br><br>
2.	표시된 영양분석표는 매장에서 판매되고 있는 모든 제품의 영양정보를 포함하지 못할 수도 있습니다.(신제품/ 특정계절 한시판매 제품/ 일부 매장 특별 판매 제품)<br><br>
3.	표시된 영양 구성성분은 실험방법 등에 따라 차이가 있을 수도 있습니다.<br><br>
4.	영양표 속의 모든 제품은 표준 용량이며, 실제 제공시 다소 차이가 있을 수 있습니다.<br><br>
5.	괄호안 %는 1일 영양소 기준치에 대한 비율입니다.<br>
										</div>
									</div>
									<div id="pfourth">
										<div class="pfourth_title"></div>
										<div class="pfourth_content">

										</div>
									</div>
								</div>	--> 			        
								
						  </div>
					</div>	    		             		  
		           </div> 
		               <!-- 내용 끝 -->       
	            </div>
			</div>
	</div>
		<br>
	<div id="third">
		<div id="third_view">						
					<div id="itemdetail" >									
								<img src="image/product/${productVO.image_detail}" />								
					</div>		
		</div>	
	</div>
	



	<div class="product_background">
		<div class="product_banner_view">
			<div class="product_banner_all">
				<div class="product_banner_top" >
					<c:choose>
						<c:when test="${productVO.kind==1}">스페셜&할인팩의 다른 메뉴</c:when>
						<c:when test="${productVO.kind==2}">프리미엄의 다른 메뉴</c:when>
						<c:when test="${productVO.kind==3}">와퍼의 다른 메뉴</c:when>
						<c:when test="${productVO.kind==4}">주니어&버거의 다른 메뉴</c:when>
						<c:when test="${productVO.kind==5}">치킨버거의 다른 메뉴</c:when>
						<c:when test="${productVO.kind==6}">사이드의 다른 메뉴</c:when>
						<c:when test="${productVO.kind==7}">음료&디저트의 다른 메뉴</c:when>
					</c:choose>
				</div>
				<div class="product_banner_bottom">
					<c:choose>
						<c:when test="${productVO.kind==1}">
							<%@ include file="/WEB-INF/views/product/product_banner/product_banner1.jsp" %></c:when>
						<c:when test="${productVO.kind==2}">
							<%@ include file="/WEB-INF/views/product/product_banner/product_banner2.jsp" %></c:when>
						<c:when test="${productVO.kind==3}">
							<%@ include file="/WEB-INF/views/product/product_banner/product_banner3.jsp" %></c:when>
						<c:when test="${productVO.kind==4}">
							<%@ include file="/WEB-INF/views/product/product_banner/product_banner4.jsp" %></c:when>
						<c:when test="${productVO.kind==5}">
							<%@ include file="/WEB-INF/views/product/product_banner/product_banner5.jsp" %></c:when>
						<c:when test="${productVO.kind==6}">
							<%@ include file="/WEB-INF/views/product/product_banner/product_banner6.jsp" %></c:when>
						<c:when test="${productVO.kind==7}">
							<%@ include file="/WEB-INF/views/product/product_banner/product_banner7.jsp" %></c:when>
					</c:choose>  
			   	</div>
		   	</div>
		</div>	
	</div>

<%@ include file="/WEB-INF/views/include/footer_top.jsp" %>    
<%@ include file="/WEB-INF/views/include/footer.jsp" %>   
 