<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>    



<div class="main_body" style="width=100%; background:#f2ebe6;">

<%@ include file="/WEB-INF/views/Banner.jsp" %>

	<div class="main_wrap">
		<div class= "adVideo" style="height:700px">
				<iframe id="exFrame" name="exFrame" width="100%" height="700" src="  https://www.youtube.com/embed/5T-TGBVJNIw?rel=0&amp;showinfo=0&amp;autoplay=0"
				frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"></iframe>
		</div>
		
		<div class="main_sns_view">
			<div class="main_sns" style="left:25%;">
			<a href="https://www.youtube.com/channel/UCEKRI0fipK4LEgV98nI2CQA/featured">	
				<img src="image/Bimage/youtube.png" style="width:100%; height:100%">
				</a>
			</div>
			<div class="main_sns" style="left:50%;">
				<a href="https://www.facebook.com/burgerkingkorea">	
				<img src="image/Bimage/facebook.png" style="width:100%; height:100%">
				</a>
			</div>
			<div class="main_sns" style="left:75%;">
				<a href="https://www.instagram.com/burgerkingkorea/">	
				<img src="image/Bimage/instagram.png" style="width:100%; height:100%">
				</a>
			</div>
		</div>
		
		<div class="main_view">
			<div class="main_app" onclick="location.href=''"></div>
			<div class="main_delivery" onclick="location.href=''"></div>
			<div class="main_findstore"><div class="main_findstore_button" onclick="location.href=''"></div></div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/include/footer_top.jsp" %>    
<%@ include file="/WEB-INF/views/include/footer.jsp" %>    