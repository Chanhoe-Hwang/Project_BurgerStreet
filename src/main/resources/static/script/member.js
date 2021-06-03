// 1) on클래스 구현
$(function(){
    $(".tab .click ul li").click(function(){ 
        $(".tab .click  ul li").removeClass('on');
        $(".tab .contractJoin").removeClass('on');
        $(this).addClass('on');
        $("#"+$(this).data('id')).addClass('on');
    });
}); 

// 2) input태그에 입력한 텍스트 삭제 버튼
function clearInput() {
       document.getElementById("txt").value ='';
}

// 2-1) input 태그에 텍스트 삭제 버튼 
$(function() {
	 $('#txt').keypress( function(event){
	   if($('#txt').val()==''){
	    $( '.txt_del' ).css( "display", "none");
	    }else{
	      $( '.txt_del' ).css( "display", "block");
	    }
	 });
}); 



// 3) 비밀번호 숨기기 이미지버튼
$(function(){
    $('.loginbox .btn_view').on('click',function(){
       $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"btn_view").addClass('on')
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"btn_view")
            .prev('input').attr('type','password');
        }
    });
});

// 4) 비회원 비밀번호 숨기기 이미지버튼
$(function(){
    $('.loginbox2 .btn_view').on('click',function(){
        $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"btn_view").addClass('on')
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"btn_view")
            .prev('input').attr('type','password');
        }
    });
});

// 4-1) 비회원주문 비밀번호 숨기기 이미지버튼
$(function(){
    $('.emailBox2 .btn_view').on('click',function(){
        $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"btn_view").addClass('on')
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"btn_view")
            .prev('input').attr('type','password');
        }
    });
});

// 5) 체크박스(아이디저장) 
$(document).ready(function(){
    var userInputId = getCookie("userInputId");
    $("input[name='id']").val(userInputId); 
     
    if($("input[name='id']").val().toString().length){ 
        $("#txt").attr("checked", true);
    }
     
    $("#txt").change(function(){
        if($("#txt").is(":checked")){ 
            var userInputId = $("input[name='id']").val();
            setCookie("userInputId", userInputId, 30); // 30일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });
     
    $("input[name='id']").keyup(function(){ 
        if($("#txt").is(":checked")){
            var userInputId = $("input[name='id']").val();
            setCookie("userInputId", userInputId, 30); 
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });
});


// 6) 약관동의(전체선택)
$(function(){ 
	$("#check_all").click(function(){ 
		if($("#check_all").prop("checked")) { 
			$("input[type=checkbox]").prop("checked",true); 
		} else {
			$("input[type=checkbox]").prop("checked",false); 
			} 
		}) 
	})
	


// 7) 비회원 이용약관 펼쳐보기
 $(document).ready(function(){
        $("#click").click(function(){
            if( $(".hide_box").is(":visible") ){
                $(".hide_box").slideUp();
            }else{
                 $(".hide_box").slideDown();
            }
        });
  });
 
 function Number(){
 alert("인증번호는 '0000' 입니다")
 }