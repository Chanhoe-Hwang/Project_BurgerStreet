<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
    #gallery{position:relative; margin:0 auto; width:1140px; height:480px; overflow:hidden; top:1px}
    #img_list{ position: absolute; top:0; left:0; width:9120px; height:480px;}
    #remote{position:absolute; bottom:0px; right:400px; width:350px; height:80px; z-index:20;}
    .re{float:left; width:20px; height:20px; border-radius:50%; margin:6px; background:white; 
    			margin-top:30px;cursor:pointer;}
  	.re_sel{background:red; border-radius:50%; cursor:pointer; }
	#lbutton{position: absolute; left:0; width: 55px;height: 55px;margin-top: 200px;cursor:pointer;
        background-image: url(/image/Bimage/ico_movie_171115.png);background-position: 0px -180px;}
    #rbutton{position: absolute; right:0; width: 55px;height: 55px;margin-top: 200px;cursor:pointer;
        background-image: url(/image/Bimage/ico_movie_171115.png);background-position: -60px -180px;}
</style>
<script src="script/jquery-3.5.1.js"></script>
<script type="text/javascript">
    var imgs = ['image/Bimage/B1.png' , 'image/Bimage/B2.png' , 'image/Bimage/B3.png' , 'image/Bimage/B4.png' , 
    	'image/Bimage/B5.png','image/Bimage/B6.png','image/Bimage/B7.png','image/Bimage/B8.png'];
    // 이미지 경로와 파일 이름을 배열로 생성
    var s = '';
    for(var i=0; i<=7; i++)
    s += '<img src="' + imgs[i] + '" width="1140" height="480">';
    var imgNum = 0

    var autoState = 'on';
    timer = window.setInterval(function(){
        imgNum++;
        if(imgNum>7)imgNum = 0;
            $('#img_list').animate( { left: imgNum*1140*(-1) } , 500);

        for(var i=0; i<=7; i++) 
            $('#remote div:eq(' + i + ')').removeClass('re_sel');
        $('#remote div:eq(' + (imgNum) + ')').addClass('re_sel'); 
        },2000);
    $(function(){
        $(s).appendTo('#img_list'); 
        $('#remote div').click( function(){
            var num = $(this).index();
            for(var i=0; i<=7; i++) 
                $('#remote div:eq(' + i + ')').removeClass('re_sel');
		/*   if(num==0){
                if(autoState=='on') return;
                    imgNum--;
                    if(imgNum<0) imgNum = 0;
                        $('#img_list').animate( { left: imgNum*1140*(-1) } , 480);
                        $('#remote div:eq(' + (imgNum+1) + ')').addClass('re_sel');
            }else  */
            	
           /*  if(num==7){
                if(autoState=='on') return;
                    imgNum++;
                    if(imgNum>7)imgNum = 7;
                        $('#img_list').animate( { left: imgNum*1140*(-1) } , 500);
                        $('#remote div:eq(' + (imgNum) + ')').addClass('re_sel');
            }else  */
            if(num==8){
                $('#remote div:eq(' + (imgNum) + ')').addClass('re_sel');
                if(autoState=='on'){
                    autoState='off';   
                    window.clearInterval(timer);
                    
                }else if(autoState=='off'){
                    autoState='on'; 
                    timer = window.setInterval(function(){
                        imgNum++;
                        if(imgNum>7)imgNum = 0;
                            $('#img_list').animate( { left: imgNum*1140*(-1) } , 500);

                        for(var i=0; i<=7; i++) 
                            $('#remote div:eq(' + i + ')').removeClass('re_sel');
                        $('#remote div:eq(' + (imgNum) + ')').addClass('re_sel'); 
                        },2000);
                	}
            }else{
                if(autoState=='on') return;
                imgNum = num;
                $('#img_list').animate( { left: imgNum*1140*(-1) } , 500);
                $('#remote div:eq(' + num + ')').addClass('re_sel');
            }
        });
    });
 	function mvleft(){
 		 if(autoState=='on') return;
         imgNum--;
         if(imgNum<0) imgNum = 0;
             $('#img_list').animate( { left: imgNum*1140*(-1) } , 480);            
             for(var i=0; i<=7; i++) 
                 $('#remote div:eq(' + i + ')').removeClass('re_sel');
             $('#remote div:eq(' + (imgNum) + ')').addClass('re_sel');
 	}
	function mvright(){
		if(autoState=='on') return;
        imgNum++;
        if(imgNum>7)imgNum = 7;
            $('#img_list').animate( { left: imgNum*1140*(-1) } , 500);            
            for(var i=0; i<=7; i++) 
                $('#remote div:eq(' + i + ')').removeClass('re_sel');
            $('#remote div:eq(' + (imgNum) + ')').addClass('re_sel');
 	}
</script>
</head>
<body>
<div id="gallery" >
    <!--이동할 메인 이미지들-->
    <div id="img_list"></div><!--appendTo 를 이용해서 이미지 첨부-->
	<div id="lbutton" onclick="mvleft()"></div>
	<div id="rbutton" onclick="mvright()"></div>
    <!--우측하단 리모콘-->
    <div id="remote">
      <!--   <div style="margin-left:40px; text-align:center; font-weight:bold; line-height:16px;" class="re">◀</div> -->
		      
        <div style="margin-left:40px; text-align:center; font-weight:bold; line-height:16px;"
        	class="re re_sel"></div>
        <div class="re"></div>
        <div class="re"></div>
        <div class="re"></div>
        <div class="re"></div>
        <div class="re"></div>
        <div class="re"></div>
        <div class="re"></div>
        <div style = "text-align:center; font-weight:bold;line-height:16px" class="re">
     		<img src="image/Bimage/png.png" style="width:20px">
        </div>
  <!--       <div style = "text-align:center; font-weight:bold;line-height:16px" class="re">▶</div> -->
        
    </div>
</div> 
</body>
</html>