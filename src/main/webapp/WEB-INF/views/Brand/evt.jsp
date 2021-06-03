<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %> 
<div id="first">
		<div id="first_view" >		
			<a href="/">Home</a> > 이벤트 > 전체
		</div>
</div>
<div id="second">
		<div id="second_view">
			<div id="second_left">
				<h1 style="font-weight:bold;">이벤트</h1>
			</div>
			<div id="second_right">
				<ul class="ul01" style="float: right;">
               		<li class="Menu" style="color:red; border-bottom:3px solid red;" 
               		onClick="location.href=''">전체</li>
	               	<li class="Menu" onClick="location.href=''">진행중</li>
	               	<li class="Menu" onClick="location.href=''">종료</li>
           </ul>
			</div>
		</div>
	</div>
<link rel="stylesheet" type="text/css" href="css/evt.css">
<div class="tab">
    <ul style="font-size:25px;">
        <li data-id="con1" class="on">이벤트</li>
        <li data-id="con2" onClick="location.href='boardmain'">게시판</li>
    </ul>
    <div id="con1" class="conBox on">
        <div class="evt"><img src="image/evt/e01.png"><h2>2021.02.08~2021.02.10</h2></div>
        <div class="evt"><img src="image/evt/e02.png"><h2>2021.02.08~2021.02.10</h2></div>
        <div class="evt"><img src="image/evt/e03.png"><h2>2021.01.18~</h2></div>
        <div class="evt"><img src="image/evt/e04.png"><h2>2021.01.11~</h2></div>
        <div class="evt"><img src="image/evt/e05.png"><h2>2021.01.01~2021.06.30</h2></div>
        <div class="evt"><img src="image/evt/e06.png"><h2>2021.01.04~2021.01.10</h2></div>
        <div class="evt"><img src="image/evt/e07.png"><h2>2021.01.04~</h2></div>
        <div class="evt"><img src="image/evt/e08.png"><h2>2020.12.28~2021.01.03</h2></div>
        <div class="evt"><img src="image/evt/e09.png"><h2>2020.12.21~</h2></div>
        <div class="evt"><img src="image/evt/e10.png"><h2>2020.12.21~2020.12.27</h2></div>
        <div class="evt"><img src="image/evt/e11.png"><h2>2020.12.28~2021.01.03</h2></div>
        <div class="evt"><img src="image/evt/e12.png"><h2>2020.12.01~2020.12.31</h2></div>
        <div class="evt"><img src="image/evt/e13.png"><h2>2020.12.07~2020.12.13</h2></div>
        <div class="evt"><img src="image/evt/e14.png"><h2>2020.11.30~2020.12.06</h2></div>
        <div class="evt"><img src="image/evt/e15.png"><h2>2020.11.23~2020.11.29</h2></div>
    </div>
    <div id="con2" class="conBox">
        <%-- <%@ include file="/WEB-INF/views/Brand/boardmain.jsp" %> --%>??
    </div>
</div>
<%@ include file="/WEB-INF/views/include/footer_top.jsp" %>    
<%@ include file="/WEB-INF/views/include/footer.jsp" %>