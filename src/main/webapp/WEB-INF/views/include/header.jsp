<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel= "stylesheet" type="text/css" href="css/menu.css">
<style type="text/css">
	
	html{width: 100%;  height: 100%;  margin: 0;  padding: 0;}
	body{width: 100%;  height: 100%;  margin: 0;  padding: 0;}
	
    .main_wrap{position: relative; width: 80%; margin: 0 auto;}
    #header_wrap{position: relative; width: 100%; height: 110px; line-height: 110px; box-shadow:1px 0px 4px gray; background:white;}
    #header_logo{position: relative; width: 80px; height: 80px; float:left; line-height: 80px; cursor:pointer; 
    		border-radius: 50%; overflow:hidden; text-align: center; left:50%; margin-left:-500px; top:15px;}
    #header_menu{position: relative; width: 800px; height: 100px; float:left; left:50%; margin-left:-400px; font-size:20px; font-weight: bold;}
    
    #header_menu:hover~#header_menu_sub{visibility:visible;}
    #header_menu:hover~.whiteview{visibility:visible;}
    #header_menu_sub:hover{visibility: visible}
    #header_menu_sub:hover~.whiteview{visibility: visible;}
  
    .header_menu_title{position: relative; width: 150px; margin: 0 auto; float:left; left:52px; padding:10px;}
    #header_join{position: relative; width: 100px; height: 110px; float:left; left:50%; }
    #header_joinbutton{position: relative; width:160px; height: 50px; background-image: url("image/Bimage/red_tag.png");
    	font-weight:bold; font-size:18px; color:white; line-height:50px; padding-left:20px; top:30px; cursor:pointer;} 
    
    #header_menu_sub{position: absolute; width: 800px;  height: 250px; top:82px; visibility: hidden; z-index: 2; left:50%; margin-left:-400px;}
    .header_menu_box{position: relative; width: 170px; float: left; top:20px;}
    ul{list-style:none; font-size:12px; }
    .whiteview{position:absolute; top:110px; height:300px; width:100%; z-index:1; background:white; visibility: hidden; z-index:1;}
    a{text-decoration:none; color:black; font-size:13px; font-weight:bold;}
    li{line-height:25px;}
    
    .main_sns_view{position:relative; width:100%; height: 140px; background:rgb(104, 58, 47);}
    .main_sns{position:absolute; float:left;  transform:translate(-50%, -50%); top:50%; width:13%; height:60%;}
    
   	.main_view{position:relative; width:100%; height:1300px; overflow:hidden;}
   	.main_app{position:relative; width:50%; height:400px; background-image: url("image/Bimage/main_app.png");
   		background-size:100% 100%; float:left; cursor:pointer;}
   	.main_delivery{position:relative; width:50%; height:400px; background-image: url("image/Bimage/main_delivery.png");
   		background-size:100% 100%; float:right; cursor:pointer; left:-1px;}
   	.main_findstore{position:absolute; width:100%; height:900px; top:400px; background-image: url("image/Bimage/main_findstore.png");
   		background-size:100% 100%;} 
   	.main_findstore_button{position:absolute; width: 90px; height:50px; left:50%; transform:translate(-50%); top:280px; z-index:1;
   	 background-image: url("image/Bimage/main_findstore_button.png"); background-size:100% 100%; cursor:pointer;} 
   	
   	.footer_top{position:relative; width:100%; height:500px;  background-image: url("image/Bimage/footer_top.jpg");
   	  background-size:100% 100%;}
   	.footer_top_menu{position:relative; width:80%; height:400px; top:30px; margin:0 auto;}
   	.footer_menu{position:relative; width:19%; margin-right:1%; height:300px; float:left; border-right:1px dashed silver;}
   	.footer_menu_title{position:relative; color:rgb(104, 58, 47); font-weight:bold; font-size:20px; padding-left:20px;}
   	.footer_menu_sub{color:rgb(104, 58, 47); font-weight:bold; font-size:14px; padding-left:20px; cursor:pointer;}

   	#footer_wrap{position:relative; width:100%; height:400px;  background:rgb(41,41,41); font-size:13px;}
	#footer_view1{position:absolute; width:480px; height:250px; color:#818181; top:50px; left:10%; font-size:13px;}
	#footer_view2{position:absolute; width:280px; height:60px; color:#818181; top:50px; right:10%;
		text-align:center; font-size:13px;}
	#footer_view2_top{position:absolute; width:100%; top:0px; }
	#footer_view2_bottom{position:absolute; width:100%; bottom:0px;}
	.footer_view2_box{position:relative; float:left; border-right:1px solid #818181; cursor:pointer; }
	.footer_button{position:relative; float:left; margin-right:5px; border-radius:5px; padding:5px 0; background:#434343; width:47%; cursor:pointer;}
/* <div id="footer_wrap">
	<div id="footer_view1">
		<img src="Bimage/footer_burgerking.gif"><br><br>
		<p>서울 종로구 삼봉로 71 G 타워 2층 주식회사 비케이알 | 전화주문 1599-0505</p>
		<p>사업자 등록번호 101-86-76277 | (주)BKR 대표이사 문영주</p>
		<p>Copyright 2019 BKR Co., Ltd. All right Reserved</p><br>
		<img src="Bimage/facebook_logo.png">
		<img src="Bimage/instagram_logo.png">
	</div>
	<div id="footer_view2">
		<div id="footer_view2_top">
			<div class="footer_view2_box">이용약관</div>
			<div class="footer_view2_box">개인정보취급방침</div>
			<div class="footer_view2_box">법적고지</div>
		</div>
		<div id="footer_view2_bottom">
			<div class="footer_button">인재채용</div>
			<div class="footer_button">가맹점모집</div>
		</div>
	</div>
	</div> */
	
</style> 
<script src="script/jquery-3.5.1.js"></script>
<script type="text/javascript" src="<c:url value='script/brand.js' />"></script>
<script type="text/javascript" src="<c:url value='script/burger.js' />"></script>
 <script type="text/javascript">	
 	
/* $(document).ready(function(){
	$('.menu').each(function(index){
		$(this).attr('menu-index', index);
	}).click(function(){
		var index = $(this).attr('menu-index');
		$('.menu[menu-index=' + index + ']').addClass('clicked_li');
		$('.menu[menu-index!=' + index + ']').removeClass('clicked_li');	
		$('li').removeClass('first');		
	});
}); */

</script> 
</head>
<body>
<header>
		<div id="header_wrap">
		    <div id="header_logo" onclick="location.href='/'">
		        <img src="image/Bimage/Blogo.jpg" width="80px">
		    </div>
		    <div id="header_menu">
		        <div class="header_menu_title">메뉴소개</div>
				<div class="header_menu_title">매장소개</div>
				<div class="header_menu_title">이벤트</div>
				<div class="header_menu_title">브랜드스토리</div>
		    </div>
		    <div id="header_join">
		        <div id="header_joinbutton" onclick="location.href='loginForm'">
		        	로그인
		        	<img src="image/Bimage/right_arrow.png" style="position:absolute; top:18px; right:25px;">
		        </div>
		    </div>
		    <div id="header_menu_sub">
                    <div class="header_menu_box" style="left:50%; margin-left:-380px">
                        <ul>
                            <li><a href="detail1">스페셜&amp;할인팩</a></li>
                            <li><a href="detail2">프리미엄</a></li>
                            <li><a href="detail3">와퍼</a></li>
                            <li><a href="detail4">주니어&amp;버거</a></li>
                            <li><a href="detail5">올데이킹&amp;치킨버거</a></li>
                            <li><a href="detail6">사이드</a></li>
                            <li><a href="detail7">음료&amp;디저트</a></li>
                        </ul>
                    </div>
                    <div class="header_menu_box" style="left:50%; margin-left:-210px">
                        <ul>
                            <li><a href="BurgerW">매장찾기</a></li>
                        </ul>

                    </div>
                    <div class="header_menu_box" style="left:50%; margin-left:-40px;">
                        <ul>
                            <li><a href="evt1">이벤트</a></li>
                        </ul>
                    </div>
                    <div class="header_menu_box" style="left:50%;">
                        <ul>
                            <li><a href="Brand1">버거길 스토리</a></li>
                            <li><a href="Brand2">WHY 버거길</a></li>
                            <li><a href="Brand3">버거길 NEWS</a></li>
                        </ul>
                    </div>
			</div>
            <div class="whiteview"></div>
		</div>
	</header>