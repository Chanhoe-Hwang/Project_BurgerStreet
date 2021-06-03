<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %> 
<div id="first">
		<div id="first_view" >		
			<a href="/">Home</a> > 브렌드 스토리 > 버거길 NEWS
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
	               	<li class="Menu" onClick="location.href='Brand2'">WHY 버거길</li>
	               	<li class="Menu"  style="color:red; border-bottom:3px solid red;"
	               	onClick="location.href='Brand3'">버거길 NEWS</li>
           </ul>
			</div>
		</div>
	</div>
<link rel="stylesheet" type="text/css" href="css/Brand3.css">
<div class="tab">
    <ul style="font-size:25px;">
        <li data-id="con1" class="on">신제품</li>
        <li data-id="con2">광고(TV/Digital)</li>
    </ul>
    <div id="con1" class="conBox on">
    	빈곳
    </div>
    <div id="con2" class="conBox">
		빈칸
	</div>
</div>
<%@ include file="/WEB-INF/views/include/footer_top.jsp" %>    
<%@ include file="/WEB-INF/views/include/footer.jsp" %>