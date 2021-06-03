<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#fourth{position: relative;width:100%;height: auto;}
#fourth_view{ position: relative; width:1100px; height: auto; min-height: 500px; overflow: hidden;
			 margin: 0 auto;}
#fourth_top{position:relative; height:75px; border-bottom: solid 2px black;}
.fourth_top_left{position:relative; width:369px; height:75px; margin:0 auto; text-align: left; 
    					line-height:75px; float: left; cursor:pointer; font-size:140%; font-weight:bold;}
.fourth_top_right{position:relative; width:369px; height:75px; margin:0 auto; text-align: center; 
    					line-height:105px; float: right; cursor:pointer;}
#fourth_bottom{position:relative; line-height:30px;}
</style>
</head>
<body>


	<div id="fourth">
		<div id="fourth_view">
			<div id="fourth_top">
				<div class="fourth_top_left">
					유의사항
				</div>
				<div class="fourth_top_right">
					<a href="#open-moda" onclick="scrollDisable()">
	               			<img src="popup/popup2.png">
	               	</a>	  
	               	
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
		
							  </div>
						 </div>             		  
		           </div> 
	               	
				</div>
			</div>
			<div id="fourth_bottom">
			<br>
				· 매장별 주문금액이 상이하니, 반드시 최소금액을 확인하기 바랍니다. <br>
				· 배달 소요시간은 기상조건이나 매장 사정상 지연 또는 제한될 수 있습니다. <br>
				· 고객님과 수 차례 연락을 시도한 후 연락이 되지 않는 경우 배달음식이 변질되거나 부패될 우려로 식품 위생법상
					위반될 여지가 있어 별도로 보관 하지<br>
					&nbsp; 않으며, <span style="font-weight:bold;">재배달 또는 환불처리가 어려울 수 있습니다.</span><br>
				· 딜리버리 서비스 메뉴의 가격은 매장 가격과 상이하며, 딜리버리 시 타쿠폰을 사용하실 수 없습니다.(일부품목 배달 제외)<br>
				· 배달 제품은 매장 행사(할인가격)에서 제외됩니다.<br>
				· 제품 가격 및 메뉴 구성은 본사 사정상 변경될 수 있습니다.<br>
				· 대량 주문의 경우 콜센터(1599-0505)주문으로만 가능합니다.<br>
				· 주문 완료 후 변경 및 취소는 콜센터(1599-0505)에서만 가능합니다.			<br>	
				
			</div>
		
		</div>
	</div>
	
	
</body>
</html>