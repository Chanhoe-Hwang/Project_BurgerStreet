<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header2.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<link rel= "stylesheet" type="text/css" href="css/login.css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">
	
	 *:focus { outline:none; }
	
	body{word-break: keep-all;}
	img{padding:0;}
	
	.paymentTypeSelect li{
		font-size:17px;
		font-weight:600;
	}
	
	li{
	    list-style: none;
	}
	ul{
	    padding: 0;
	}
	
	input[type=radio]{
		display:none;
	}
	
	label em {
		display:inline-block;
		width:25px;
		height:24px;
		background: url("image/cart/paymentChkOff.png");
		vertical-align:middle;
		margin-right:5px;
		
		-ms-user-select: none;
	    -moz-user-select: -moz-none;
	    -webkit-user-select: none;
	    -khtml-user-select: none;
	    user-select: none;
	}
	
	input[type=radio]:checked + label em {
		background: url("image/cart/paymentChkOn.png");
	}
	 
	.paymentBackground{width:100%; background:#f2ebe6; overflow:hidden; height:auto;}
	.paymentWrap{position:relative; width:1184px; padding:50px 0 45px 0; margin:0 auto; overflow:hidden; height:auto;}
	.paymentTitle{
		font-weight: 700;
    	font-size: 1.25rem;
    	color: #2e2e2e;
    	line-height:40px;
    	height:40px;
    	margin-top:30px;
    }
    .returnBtn{position:absolute; width:180px; height:46px; font-size:1.5rem; padding:12px 10px 10px;
		font-weight:bold; color:#fff; text-align:center; line-height:46px; background:url("image/cart/add_cart_btn.png") no-repeat 50%;
		background-size:100% 100%;  cursor:pointer; right:210px;}
	.insertOrder{position:absolute; width:200px; height:68px; font-size:1.5rem; padding:12px 10px 10px;
		font-weight:bold; color:#fff; text-align:center; line-height:46px; background:url("image/cart/insert_order_btn.png") no-repeat 50%;
		background-size:100% 100%; cursor:pointer; right:0px; border:none;}
	.infoView{position:relative; height:auto; overflow:hidden; margin-top:10px; margin-bottom:10px;
		padding:20px 64px 60px 64px; background-color:#fff;}
	
	.paymentBottom{
		margin:30px 0 30px 0;
		height:70px;
	}
        
    .deliveryAddress{
   	  	padding: 45px 4em 45px 0;
		border-bottom: 1px solid #ededed;
		font-size: 1.375rem;
		font-weight: 700;
		margin-bottom:10px;
		height: 30px;
	}
	.changeAddress{
		position:absolute;
		right:64px;
		color: #fff;
	    background: #2e2e2e;
	    border-radius: 5px;
	    cursor: pointer;
	    font-weight: 700;
	    width: 100px;
   		height: 44px;
   		font-size: 1.25rem;
   		text-align:center;
   		line-height:44px;
	}
	.phoneInfo{
		position:relative;
		height:66px;
		width:49%;
    	line-height: 66px;
    	float:left;
    }
    .storeInfo{
    	float:left;
		position:relative;
		width:49%;
		height:66px;
		line-height:66px;
	}
	.commentInfo{
		margin-top:20px;
		height:66px;
	}
	
	.storeName{
		padding: 0 18px;
	    font-size: 1.375rem;
	    color: #e22219;
	    background: #f7f7f7;
	    position:absolute;
	    right:0px;
	    height:66px;
	    width:50%;
	    line-height:66px;
	}
	
	.InfoSubtitle{
		font-weight: 700;
    	font-size: 1.5rem;
    	width:150px;
    	height:100%;
    	line-height:66px;
    	position:relative;
    	float:left;
	}
	#orderInfoTop{
		position:realtive;
		font-size: 2.5rem;
   		line-height: 110%;
   		padding: 56px 0 46px;
   		border-bottom: 1px solid #f2f2f2;
   		margin-bottom: 30px;
   	}
	
	.totalPriceInfoBottom{
		position:relative;
		height:70px;
		width:100%;
		line-height:70px;
	}
	.priceSubtitle{
    	font-weight: 700;
	    font-size: 1.375rem;
	}
	
	.discount{
		border:none;
    	font-weight: 700;
	    font-size: 1.375rem;
	    color: #000;
	    text-align: right;
	}
  		
	.paymentNote{
		position:relative;
	    margin: 25px 0;
	    padding:12px 0;
		font-size: 1.5rem;
   		border-bottom: 2px solid #000;
	
	}
	
	.cartListShowBtn{
		font-size:1.5rem;
		font-weight: 700;
	    color: #fff;
	    text-align: center;
	    line-height: 68px;
	    background:url("image/cart/paymentListShowBtn.png") no-repeat 50%;
	    width: 256px;
   		height: 68px;
   		cursor:pointer;
   		margin: 0 auto;
	}
	
	.cartListCloseBtn{
		font-size:1.5rem;
		font-weight: 700;
	    color: #fff;
	    text-align: center;
	    line-height: 68px;
	    background:url("image/cart/paymentListShowBtn.png") no-repeat 50%;
	    width: 256px;
   		height: 68px;
   		cursor:pointer;
   		margin: 0 auto;
	}
	
	#roadAddress{
		position:absolute;
		top: 52px;
		border:none;
		font-size: 1.375rem;
		font-weight: 700;	
	    width: 700px;
	}
	
	#addressDetail{
		position:absolute;
		top: 88px;
		border:none;
		font-size: 1.375rem;
		font-weight: 700;
	    width: 700px;
	}
	/* 카트리스트꺼 css가져온거 (체크박스 css 두군데 display:none; 으로 변경함) */
	
	 *:focus { outline:none; }
	 
	 
	 
	.cartList{width:100%; background:#f2ebe6; overflow:hidden; height:auto;}
	.cartEmpty{ padding:370px 10px 10px; background:url("image/cart/cart_empty.png") no-repeat center 150px;  }
	.cartListWrap{position:relative; width:1184px; padding:50px 0 45px 0; margin:0 auto; overflow:hidden; height:auto;}
	.addCartList{position:absolute; width:180px; height:46px; font-size:1.5rem; padding:12px 10px 10px;
		font-weight:bold; color:#fff; text-align:center; line-height:46px; background:url("image/cart/add_cart_btn.png") no-repeat 50%;
		background-size:100% 100%;  cursor:pointer; right:210px;}
	.payment{position:absolute; width:200px; height:68px; font-size:1.5rem; padding:12px 10px 10px;
		font-weight:bold; color:#fff; text-align:center; line-height:46px; background:url("image/cart/insert_order_btn.png") no-repeat 50%;
		background-size:100% 100%; cursor:pointer; right:0px; border:none;}
	.cartListTop{position: relative; margin-bottom: 24px; font-size: 1.25rem; font-weight: bold; height:50px;}
	.emptyComment{font-size: 1.5rem; color:#766e69; text-align:center; cursor:pointer;}
	.checkBtn{position:relative; float:left;}
	.cartInfo{position: relative; margin-top:40px; height:130px;}
	.cartListBottom{height: 96px;  padding: 12px 55px 12px 44px; background: #fff;  font-weight: 700;
   	 font-size: 1.625rem; line-height: 96px;}
	
	.cartName{position:relative; display:block; font-weight: bold; font-size: 2.5rem; line-height: 100%;
		margin-top:30px; margin-bottom:15px;}
	.cartContent{position:relative; display:block;margin-bottom:15px; font-size: 1.4rem; line-height:100%; font-weight: bold;
		word-wrap:noramal; word-brak:keep-all; color:#8d8d8d;}
	.cartPrice{position:relative; display:block; font-size: 1.8rem; line-height:100%; font-weight: bold; }
	
	.cartTotalPrice{
		float:right;
		text-align:right;
		font-weight: 700;
	    font-size: 2rem;
	    color: #e2231a;
	}
	
	.ViewBottom{
		position:absolute;
		font-weight: 700;
		font-size: 1.25rem;
		color: #000;
		line-height: 39px;
	}
	.listPrice{
		position:absolute;
		font-size:1.25rem;
		font-weight:700;
		line-height:39px;
		color:#e2231a;
		right:0;
		width:150px;
		height:39px;
		text-align:right;
	}
	.listPrice input{
		position:absolute;
		font-size:1.25rem;
		font-weight:700;
		line-height:39px;
		color:#e2231a;
		right:20px;
		text-align:right;
		border:none;
	    width: 100px;
	}
	
	.cartListView{position: relative; margin-bottom: 21px; background: #fff; height:360px; 
		padding: 32px 64px 0 80px;}
	.product_img{
		position: absolute;
	    right: 0px;
   		top: -30px;
	    width: 254px;
	    height: 191px;
	}
	.product_img img{width:100%; height:100%;}

	.ListViewTop{position:relative; height:200px;}
	.ListViewBottom{position:relative; border-top: 1px dashed #e5e5e5; padding-top:30px;}
	.ListViewTop input+:before {
	    position: absolute;
	    left: -30px;
	    top: 4px;
	}
	
	input[type=checkbox]{  /*  */
		position: absolute;
		margin: 0;
		vertical-align: middle;
		font-size: 1em;
		border: none;
		border-radius: 0; 
		opacity: 0;
		
		display:none; /* 디스플레이만 none으로 바꿈*/
	}
	
	input[type=checkbox]+:before{ /*  */
		content: "";
		display: inline-block;
		width: 25px;
		height: 25px;
		margin-right: 13px;
		vertical-align: middle;
	
		display:none; /* 디스플레이만 none으로 바꿈*/
	}
	
	input[type=checkbox]+:before{ /*  */
		background: url('./image/Mimage/checkbox.png') no-repeat 0;
	}
	
	input[type=checkbox]:checked+:before { /*  */
		background-image: url('./image/Mimage/checkbox_black.png');
	}
	
	input[type=checkbox]:checked+* { /*  */
		color: black;
	}
	
	
	.btn_minus{
		background:#d9d9d9 url("image/cart/minus_btn.png") no-repeat 50% !important;
		position: absolute;
	    top: 0;
	    width: 39px !important;
	    height: 100% !important;
	    left:0;
	    cursor: pointer;
	}
	.btn_plus{
		background:#d9d9d9 url("image/cart/plus_btn.png")  no-repeat 50% !important;
		position: absolute;
	    top: 0;
	    width: 39px !important;
	    height: 100% !important;
	    right:0;
	    cursor: pointer;
	}
	.numset {
	    position: absolute;
	    display: inline-block;
	    height: 39px;
	    padding: 0 39px;
	    background: #fff;
	    border-radius: 4px;
	    overflow: hidden;
	    left:120px;
	    width: 45px;
    }
	.numset input{
	    border:none;
    }
    .listQuantity{
   		width: 45px;
	    height: 100%;
	    padding: 0;
	    font-weight: 700;
	    font-size: 1.125rem;
	    background: none;
	    border:none;
	    margin:0 auto;
	    text-align: center;
	    position:absolute;
	    left: 46px;
    }
    
    .cartTotal{
    	border:none;
    	font-weight: 700;
	    font-size: 2rem;
	    color: #e2231a;
	    text-align: right;
	 }
    .cartInfoDetail{
    	position:absolute;
   		margin:7px 0 7px 5px;
    	line-height: 167%;
    }
    .cartInfoDetail li{
	    position: relative;
   		padding-left: 12px;
   		margin:0;
   		padding:0;
   		font-size:16px;
   		font-weight:bold;
	}
	
	.deleteCart{
		position:absolute;
		right: 0;
	    top: 0;
	    width: 80px;
	    height: 80px;
	    background:url("image/cart/delete_btn.png") no-repeat 50%;
	    cursor:pointer;
	}
</style>
<script type="text/javascript">

function showOnOff(){
	if(document.getElementById("orderInfoTop").style.display=='none'){
		document.getElementById("orderInfoTop").style.display='block';
		$(".cartListShowBtn").show();
		$(".cartListView").hide();
		$(".cartListCloseBtn").hide();
	}else{
		document.getElementById("orderInfoTop").style.display='none';
		$(".cartListShowBtn").hide();
		$(".cartListView").show();
		$(".cartListCloseBtn").show();
	}
}
/* 아래는 카트리스트에서 가져온 스크립트*/
function plus(a, b){ 
	var num = document.getElementById(a).value;
	num = Number(num)+1;
	document.getElementById(a).value = num;
	
	var sum = Number(a)*1000;
	var box_val = Number(a)*999;
	document.getElementById(sum).value = b*num;
	document.getElementById(box_val).value = b*num;
	itemSum();
};

function minus(a, b){ 
	var num = document.getElementById(a).value;
	if(num>1)
		num = Number(num)-1;
	document.getElementById(a).value = num;
	
	var sum = Number(a)*1000;
	var box_val = Number(a)*999;
	document.getElementById(sum).value = b*num;
	document.getElementById(box_val).value = b*num;
	itemSum();
	
};


	<!-- 페이지 들어오자마자 체크박스  체크 -->
	window.onload = function(){
        $("#allCheck").prop("checked", true);
        $(".chk").prop("checked", true);
        itemSum();
    };
	<!-- 전체선택 -->

    function allChkboxClick(){
     var allchk = $("#allCheck").prop("checked");
     if(allchk) {
         $(".chk").prop("checked", true);
             itemSum();
     } else {
          $(".chk").prop("checked", false);
         	 itemSum();
     }
   };
	<!-- 총액 합계 -->
    function itemSum(){
       var sum = 0;
       var count = $(".chk").length;
       for(var i=0; i < count; i++ ){
           if( $(".chk")[i].checked == true ){
            sum += parseInt($(".chk")[i].value);
           }
       }
       $(".cartTotal").val(sum);
    };

	
       
       <!-- 체크박스를 하나라도 풀면 전체선택 체크박스를 푸는 스크립트 + 총액계산  -->
 	function chkboxClick(){
 		
 		if( $("input:checkbox[name='chk']:checked").length == $(".chk").length ){
   	   	 	$("#allCheck").prop("checked", true);
   	  		itemSum();   	   	 
 	 	}else{
   	   		$("#allCheck").prop("checked", false);
   	  		itemSum();
 	 	}
   	  };
   	  
   	
   	/* 주소찾기 */
	function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                
            	var addr = data.roadAddress; // 도로명 주소 변수
                
            	document.getElementById("roadAddress").value = addr;
           
            }
        }).open();
    }
   	
   	function frmCheck(){
   		if(form.addr1.value == "") {
   		    alert("주소찾기 버튼을 통해 주소를 입력해주세요.");
   		 	form.addr1.focus();
   		    return false;
   		}
   		if(form.addr2.value == "") {
   		    alert("상세주소를 입력해주세요.");
   		    form.addr2.focus();
   		    return false;
   		}
   		if(form.contactnum.value == "") {
   		    alert("연락처를 입력해주세요.");
   		    form.contactnum.focus();
   		    return false;
   		}
   		return true;
   	}
</script>
<%@ include file="/WEB-INF/views/LoginP/blackbar.jsp" %>    

	<div id="first">
		<div id="first_view" >		
			<a href="Detail1">주문 Home</a> > 카트리스트 > 결제
		</div>
	</div>

<div class="paymentBackground">
	<form name="form" method="post" action="insertOrder" onsubmit="return frmCheck()">
	<div class="paymentWrap">
		<h2 style="font-size: 2.5rem;">주문하기</h2>	
		<div class="paymentTitle">
			<img src="image/cart/deliveryInfo.png" border="0" style="vertical-align:top; margin-right:10px;">배달정보
		</div>
		<div class="deliveryInfo">
			<div class="infoView" style="height:320px;">
				<div class="deliveryAddress">
					 <input type="text" id="roadAddress" name="addr1" placeholder="기본주소" onclick="execDaumPostcode()" readonly>
					 <input type="text" id="addressDetail" name="addr2" placeholder="상세주소를 입력해주세요">
					 <input type="button" id="popup" class="changeAddress" value="주소찾기" onclick="execDaumPostcode()">
				</div>
				<div class="phoneInfo">
					<div class="InfoSubtitle">연락처</div>
					<input class="line" type="text" placeholder="연락처를 입력하세요" name="contactnum" value="${loginUser.phone}"
						style="background-image:url('/image/Mimage/login_underline.png');">
				</div>
				<div class="storeInfo">
					<div class="InfoSubtitle">매장</div>	
					<div class="storeName">버거스트리트</div>
				</div>
				<div class="commentInfo">
					<div class="InfoSubtitle">요청사항</div>	
					<input class="line" type="text" placeholder="요청사항을 입력하세요" name="comments"
						style="background-image:url('/image/Mimage/login_underline.png'); width:80%;">
				</div>
			</div>
		</div>
		<div class="paymentTitle">
			<img src="image/cart/orderInfo.png"  border="0" style="vertical-align:top; margin-right:10px;">주문정보
		</div>
		<div class="orderInfo">
			<div class="infoView">
				<div id="orderInfoTop">
					${cartList[0].pname}&nbsp;포함&nbsp;${fn:length(cartList)}건
				</div>
				<div>
				
				<c:forEach items="${cartList}" var="cartVO">
					<div class="cartListView" style="padding:0; display:none;">
							<div class="ListViewTop">
								<label class="checkbox">
									<input type="checkbox" name="chk" class="chk" id="${cartVO.pseq*999}" value="${cartVO.price*cartVO.quantity}" onclick="chkboxClick();">
									<span class="cartName">${cartVO.pname}</span> 
									<span class="cartContent">${cartVO.content}</span>
									<span class="cartPrice">
										<fmt:formatNumber value="${cartVO.price}" />원</span>
								</label>
		       				</div>
		       				<div class="ListViewBottom">
								<div class="ViewBottom">수량</div>
								<div class="numset">
									<input type=hidden name="price" value="${cartVO.price}">
									<input type="button" class="btn_minus" onclick="minus(${cartVO.pseq}, ${cartVO.price});">
									<input type="number" name="quantity" id="${cartVO.pseq}" class="listQuantity" value="${cartVO.quantity}" readOnly>
									<input type="button" class="btn_plus" onclick="plus(${cartVO.pseq}, ${cartVO.price});">
								</div>
								<div class="ViewBottom" style="right:180px;">합계금액</div>
								<div class="listPrice">
									<input type="text" onkeyup="inputNumberFormat(this)" value="${cartVO.price*cartVO.quantity}"
										id="${cartVO.pseq*1000}" readOnly>원
								</div>
							</div>
       					</div>
       					<input type="hidden" name="cseq" value="${cartVO.cseq}">
					</c:forEach>
					<div class="cartListShowBtn" onclick="showOnOff()">주문 전체보기
						<img src="image/cart/arrow_down.png" style="width:25px;'">
					</div>
					<div class="cartListCloseBtn" onclick="showOnOff()" style="display:none;">닫기
						<img src="image/cart/arrow_down.png" style="width:25px; transform:rotate(180deg);">
					</div>
				</div>
			</div>
		</div>
		<div class="paymentTitle"> 
			<img src="image/cart/totalPriceInfo.png" border="0" style="vertical-align:top; margin-right:10px;">최종 결제금액
		</div>
		<div class="totalPriceInfo">
			<div class="infoView">
			
				<div class="cartListBottom" style="padding:0; margin-bottom: 20px; padding-bottom: 14px; border-bottom: 2px dashed #eee;">
					최종 결제금액
					<div class="cartTotalPrice">
						<input type="text" class="cartTotal" name="cartTotalPrice" onkeyup="inputNumberFormat(this)" readOnly >원
					</div>
				</div>
				<div class="totalPriceInfoBottom">
					<div class="priceSubtitle">제품금액
						<div class="cartTotalPrice" style="font-size: 1.375rem;  color: #000;">
							<input type="text" style="font-size: 1.375rem; color: #000;" class="cartTotal" name="cartTotalPrice" onkeyup="inputNumberFormat(this)" readOnly >원
						</div>
					</div>
				</div>		
				<div class="totalPriceInfoBottom">
					<div class="priceSubtitle">할인금액
						<div class="cartTotalPrice"  style="font-size: 1.375rem;  color: #000;">
							<input type="text" class="discount" value="0" readOnly>원
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="paymentTitle">
			<img src="image/cart/paymentMethodInfo.png" border="0" style="vertical-align:top; margin-right:10px;">결제수단 선택
		</div>
		<div class="paymentMethod">
			<div class="infoView">
				<div class="paymentSelect">
					<ul class="paymentTypeSelect">
						<li>
							<input type="radio" name="cashyn" id="radio1" value="0" checked>
							<label for="radio1"><em></em>현장에서 신용카드 결제</label>
						</li>
						<li>
							<input type="radio" name="cashyn" id="radio2" value="1">
							<label for="radio2"><em></em>현장에서 현금 결제</label>
						</li>
					</ul>
				</div>
				<div class="cartListBottom" style="padding:0; margin:20px 0 20px 0; border-top: 2px dashed #eee;">
					총 결제금액
					<div class="cartTotalPrice">
						<input type="text" class="cartTotal" name="cartTotalPrice" onkeyup="inputNumberFormat(this)" readOnly >원
					</div>
				</div>
			</div>
		</div>
		<div class="paymentBottom">
			<div class="returnBtn" onclick="location.href='cartList'">취소</div>
			<input type="submit" class="insertOrder" value="결제하기">
		</div>
		<div class="paymentNote">유의사항</div>
		<div>
			<ul style="line-height:167%; font-size:15px; font-weight:700;">
				<li>· 매장별 주문금액이 상이하니, 반드시 최소금액을 확인하기 바랍니다.</li>
				<li>· 배달 소요시간은 기상조건이나 매장 사정상 지연 또는 제한될 수 있습니다.</li>
				<li>· 고객님과 수 차례 연락을 시도한 후 연락이 되지 않는 경우 배달음식이 변질되거나 부패될 우려로 식품위생법상 위반될 여지가 있어 별도로 보관 하지 않으며, <strong>재배달 또는 환불처리가 어려울 수 있습니다.</strong></li>
				<li>· 딜리버리 서비스 메뉴의 가격은 매장 가격과 상이하며, 딜리버리 시 타쿠폰을 사용하실 수 없습니다. (일부품목 배달 제외)</li>
				<li>· 프로모션 할인과 쿠폰할인은 중복적용이 불가합니다.</li>
				<li>· 배달 제품은 매장 행사(할인가격)에서 제외됩니다.</li>
				<li>· 제품 가격 및 메뉴 구성은 본사 사정상 변경될 수 있습니다.</li>
				<li>· 대량 주문의 경우 콜센터(1599-0505)주문으로만 가능합니다.</li>
				<li>· 주문 완료 후 변경 및 취소는 콜센터(1599-0505)에서만 가능합니다.</li>
			</ul>
		</div>
	</div>
	</form>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>   	