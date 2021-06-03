<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %> 

<div id="first">
		<div id="first_view" >		
			<a href="/">Home</a> > 브렌드 스토리 > WHY 버거길
		</div>
</div>
<div id="second">
		<div id="second_view">
			<div id="second_left">
				<h1 style="font-weight:bold;">브렌드 스토리</h1>
			</div>
			<div id="second_right">
				<ul class="ul01" style="float: right;">
               		<li class="Menu" onClick="location.href='Brand1'">버거길 스토리</li>
	               	<li class="Menu" style="color:red; border-bottom:3px solid red;"
	               	onClick="location.href='Brand2'">WHY 버거길</li>
	               	<li class="Menu" onClick="location.href='Brand3'">버거길 NEWS</li>
           </ul>
			</div>
		</div>
	</div>

<link rel="stylesheet" type="text/css" href="css/Brand2.css">
<div class="tab">
   <div style="width: 76%; margin: 0 auto;">
    <ul style="font-size:25px;">
        <li data-id="con1" class="on">Real Whopper</li>
        <li data-id="con2">FLAME GRILLED</li>
        <li data-id="con3">신선한 재료</li>
        <li data-id="con4">Trust in Taste</li>
        <li data-id="con5">환경/사회공헌</li>
    </ul>
    </div>
    <div id="con1" class="conBox on">
        <div><img src="image/Brand/Brand2-1.png"></div>
        <div><img src="image/Brand/Brand2-2.png"></div>
        <div style="width: 75%; margin: 0 auto;">
        <p style="text-align: left; font-size: 160%;">버거길은 지난 5년간 끊임없이<br>
        더 건강하고 믿을 수 있는 와퍼를 만들기 위해 노력했습니다!<br><br>
        와퍼의 모든 재료에 대해 지난 5년간<br>
        향료, 색소, 보존제, 첨가제 등의 제품 성분 개선 활동을 통해<br>
        더욱 믿을 수 있고, 더욱 맛있는 리얼 와퍼가 탄생하였습니다!<br><br>

        직화로 구운 불맛 100% 순쇠고기 패티에<br>
        보다 신선한 채소와<br>
        믿을 수 있는 재료, 성분들로 완성된<br>
        버거길의 대표 메뉴 와퍼의 변신!<br>

        지금 버거길에서 리얼와퍼를 만나보세요!</p></div>
    </div>
    <div id="con2" class="conBox">
        <div style="float: left; height: 300px; margin-top: 100px; width: 50%;"><img src="image/Brand/Brand3-1.png">
        <p>전 세계적으로 사랑 받는 WHOPPER는 불에 직접 구운<br> 100% 순쇠고기 패티 위에 신선한 토마토, 양상추,<br> 양파, 마요네즈, 케첩, 상큼한 피클을 올린 버거길의<br> 대표 제품입니다.</p></div>
        <div><img src="image/Brand/Brand3-2.png"></div>
        <div><img src="image/Brand/Brand3-3.png"></div>
    </div>
    <div id="con3" class="conBox">
        <div><img src="image/Brand/Brand4-1.png"></div>
        <div><img src="image/Brand/Brand4-2.png"><img src="image/Brand/Brand4-3.png"></div>
    </div>
    <div id="con4" class="conBox">
        <div style="font-size: 150%; color: brown; font-weight: bold; text-align: left; width: 75%; margin: 0 auto; height: 150px;"><p>Trust in Taste란? 전세계 버거길의 고객들이 우리 제품에 만족감을 느낄 수 있도록 하는<br> 활동입니다. 버거길 코리아는 전세계 버거길의 가치인 Trust in Taste를 시행하며최고의<br> 제품과 서비스를 제공하기 위해 노력하고 있습니다.</p></div>
        <div style="width: 75%; margin: 0 auto;">
            <div class="Brand5">
                <img src="image/Brand/Brand5-1.jpg"><h3>Trust in Taste1. 최고의 버거</h3><p>WHOPPER의 맛과 퀄리티를 개선하여 고객들이 최고의 맛을 느낄 수 있도록<br> 합니다. 버거길의 자산인 Flame-Grilling 방식으로 더욱 특별한 맛을<br> 제공합니다. 버거길의 소고기 패티는 100% 순쇠고기로 만들어졌으며, 어떠한<br> 방부제나 첨가물이 들어가지 않습니다.</p></div>
            <div class="Brand5">
                <img src="image/Brand/Brand5-2.jpg"><h3>Trust in Taste2. 최고의 치킨</h3><p>버거길은 고객에게 가장 맛이 좋은 치킨 제품을 제공합니다.</p>
            </div>
            <div class="Brand5">
                <img src="image/Brand/Brand5-3.jpg"><h3>Trust in Taste3. 재료</h3><p>버거길은 고객에게 높은 품질의 제품을 제공하기 위해 재료에 대한 내부 정화<br> 정책을 시행합니다.</p>
            </div>
            <div class="Brand5">
                <img src="image/Brand/Brand5-4.jpg"><h3>Trust in Taste4. 주방</h3><p>버거길의 주방 배치는 고객에게 신선한 준비 과정을 보여주며 품질 인식을<br> 개선합니다.</p>
            </div>
        </div>
    </div>
    <div id="con5" class="conBox">
        <div><img src="image/Brand/Brand6.png"><p style="text-align: center; font-weight: bold; font-size: 130%;">환경을 위한 작은 실천<br>개인 음료 컵 사용 시<br>탄산음료(단품) 200원 할인</p></div>
    </div>
</div>
<%@ include file="/WEB-INF/views/include/footer_top.jsp" %>    
<%@ include file="/WEB-INF/views/include/footer.jsp" %>