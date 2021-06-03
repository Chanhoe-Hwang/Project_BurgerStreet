<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html> <!--header-->
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" type="text/css" href="css/menu.css">
<style type="text/css">
       
header {
  height: 168px;
  background: #e22219;
}

#box {
  display: flex;
  flex-flow: column nowrap;
  margin: 0 17px;
}
.webContainer{
	width: 1100px;
	margin: 0 auto;
	
}

/* 헤더 멀티 메뉴 스타일링 ------------------------------------------------------------ */

#untilMenu {
  display: flex;
  flex-flow: row nowrap;
  justify-content: flex-end;
  align-items: center;
  position: relative;
  height: 48px;
}

.menu a {
  padding-right: 14px;
  padding-left: 14px;
  text-decoration: none;
  font-size: 14px;
  color: #ffffff;
  font-weight: 400;
}

/* 메뉴의 첫번째 자식을 제외한 나머지 요소에만 스타일 적용 */
.menu:not(:first-child)::before {
  content: '';
  position: absolute;
  top: 50%;
  width: 1px;
  height: 13px;
  background: #e84e47;
  transform: translateY(-50%);
}

/* 헤더 컨테이너 스타일링 ------------------------------------------------------------- */

#container {
  display: flex;
  flex-flow: row nowrap;
  justify-content: space-between;
  align-items: center;
  margin-top: 28px;
}

.join_btn {
  position: relative;
}

.join_btn a {
  position: absolute;
  top: 0;
  left: 43%;
  line-height: 50px;
  text-decoration: none;
  font-size: 20px;
  font-weight: bold;
  color: #ffffff;
  transform: translateX(-50%);
}

.button_arrow {
  position: absolute;
  top: 45%;
  right: 21px;
  transform: translateY(-50%);
}
	.logo {
	display: flex;
	align-items: center;
    position: static;
    width: auto;
   /*  height: 120px; */
    /* padding-left: 80px; */
	/* padding-right: 30px;  */
    font-weight: 700;
    font-size: 2.25rem;
    color: #fff;
    text-indent: 0;
    /* line-height: 120px; */
    background: url(../img/logo_delivery.e43e8f90.png) no-repeat 0;
    cursor: pointer;
}
img{
padding-right: 20px; 
}

/* footer css */

 	html{width: 100%;  height: 100%;  margin: 0;  padding: 0;}
	body{width: 100%;  height: 100%;  margin: 0;  padding: 0;}
	
    .main_wrap{position: relative; width: 80%; margin: 0 auto;}
    #header_wrap{position: relative; width: 100%; height: 110px; line-height: 110px; box-shadow:1px 0px 4px gray; background:white;}
    #header_logo{position: relative; width: 100px; height: 110px; float:left; line-height: 80px; text-align: center; left:50%; margin-left:-500px; top:20px;}
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

</style>
<script src="script/jquery-3.5.1.js"></script>
<script type="text/javascript" src="<c:url value='script/brand.js' />"></script>
<script type="text/javascript" src="<c:url value='script/burger.js' />"></script>
</head>
<body>
<header>
   <div id="box">
   <div class="webContainer">
       <div id="untilMenu">
           <div class="menu">
           <a href="Detail1">	
           <span>주문 홈</span></a>
           </div>
           <div class="menu">
           <c:choose>
				<c:when test="${empty loginUser}">
					<a href="loginForm"><span>로그인</span></a> 	
				</c:when>
	    		<c:otherwise>
	       			<a href="logOut"><span>로그아웃</span></a> 	
				</c:otherwise>
			</c:choose>
     
           </div>
           <div class="menu">
           <a href="boardmain"><span>고객센터</span></a>
           </div>
       </div>
       
        <div id="container">
            <div class="logo" onclick="location.href='/'">
							<!-- 이미지 대체 텍스트(alt) 추가 -->
                <img src="image/Mimage/logo.jpeg" alt="버거길로고 " width="80"/> 
                버거길
            </div>
            <div class="space" style="width:650px;">
                
            </div>
            <div class="log_img" style="align-items: center;margin-top: 5px;">
            <img src="image/Bimage/login.png"  width="50" height="50" />
            </div>
            <div class="login">
							<!-- 회원가입 배경 이미지 추가 -->
                
                <c:choose>
				<c:when test="${empty loginUser}">
					<div style="color:yellow;font-weight:bold;font-size:110%;">
					로그인후 게시판을<br>이용하실수 있습니다.
					</div>
				</c:when>
	    		<c:otherwise>
	       			<div style="color:yellow;font-weight:bold;font-size:110%;">
	       				${loginUser.name}(${loginUser.id})님 <br>안녕하세요!!</div>
	       			
				</c:otherwise>
			</c:choose>
                
            </div>
        </div>
	</div>
    </div>
</header>

</body>
</html>