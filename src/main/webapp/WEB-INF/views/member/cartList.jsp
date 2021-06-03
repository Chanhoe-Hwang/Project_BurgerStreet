<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header2.jsp" %>

<style type="text/css">
	
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
	}
	
	input[type=checkbox]+:before{ /*  */
		content: "";
		display: inline-block;
		width: 25px;
		height: 25px;
		margin-right: 13px;
		vertical-align: middle;
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
<script src="script/jquery-3.5.1.js"></script>
<script type="text/javascript">

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
      
   	<!-- 숫자 입력시 콤마 나오게 -->

   	function inputNumberFormat(obj) {
   	    obj.value = comma(uncomma(obj.value));
   	}

   	function comma(str) {
   	    str = String(str);
   	    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
   	}

   	function uncomma(str) {
   	    str = String(str);
   	    return str.replace(/[^\d]+/g, '');
   	}

   	<!-- -->
   	
</script>

<%@ include file="/WEB-INF/views/LoginP/blackbar.jsp" %>    

	<div id="first">
		<div id="first_view" >		
			<a href="Detail1">Home</a> > 카트리스트
		</div>
	</div>

<div class="cartList">
	
	<c:choose>
		<c:when test="${cartList.size()==0}">
			<div class="cartListWrap">
			<h2>딜리버리 카트</h2>	
					<div class="cartEmpty"></div>
					    <h3 class="emptyComment">카트에 담긴 메뉴가 없습니다.</h3>
					<div class="addCartList" style="position:relative; left:50%; transform:translateX(-50%);" onclick="location.href='Detail1'">메뉴추가 +</div>
			</div>
		</c:when>
		<c:otherwise>
			<form name="form" method="post" action="payment">
			<div class="cartListWrap">
			<h2>딜리버리 카트</h2>
					<div class="cartListTop">
						<div class="checkBtn">			
							<label class="checkbox">
								<input type="checkbox" id="allCheck"  onclick="allChkboxClick();">
								<span>전체선택</span> 
							</label>
						</div>
					</div>
					<input type="number" id="hello" class="listQuantity" value="${cartVO.quantity}" readOnly>
									
					<!-- 반복실행해야되는부분임 -->
					<c:forEach items="${cartList}" var="cartVO">
						<div class="cartListView">
							<div class="deleteCart" onclick="location.href='deleteCart?cseq=${cartVO.cseq}'"></div>
							<div class="ListViewTop">
								<label class="checkbox">
									<input type="checkbox" name="chk" class="chk" id="${cartVO.pseq*999}" value="${cartVO.price*cartVO.quantity}" onclick="chkboxClick();">
									<span class="cartName">${cartVO.pname}</span> 
									<span class="cartContent">${cartVO.content}</span>
									<span class="cartPrice">
										<fmt:formatNumber value="${cartVO.price}" />원</span>
								</label>
								<div class="product_img">
									<img src="image/product/${cartVO.image}" />
								</div>
		       				</div>
		       				<div class="ListViewBottom">
								<div class="ViewBottom">수량</div>
								<div class="numset">
									<input type=hidden name="price" value="${cartVO.price}">
									<input type="button" class="btn_minus" onclick="minus(${cartVO.pseq}, ${cartVO.price});">
									<input type="number" name="quantity" id="${cartVO.pseq}" class="listQuantity" value="${cartVO.quantity}" readOnly>
									<input type="button" class="btn_plus" onclick="plus(${cartVO.pseq}, ${cartVO.price});">
									<input type="hidden" name="cseq" value="${cartVO.cseq}">
								</div>
								<div class="ViewBottom" style="right:180px;">합계금액</div>
								<div class="listPrice">
									<input type="text" onkeyup="inputNumberFormat(this)" value="${cartVO.price*cartVO.quantity}"
										id="${cartVO.pseq*1000}" readOnly>원
										<!-- 리스트 갯수를 attr 에 전달받아서 id로 써도됨 el로해도된다고함-->
								</div>
							</div>
       					</div>
					</c:forEach>
					<div class="cartListBottom">
						총 주문금액
						<div class="cartTotalPrice">
							<input type="text" class="cartTotal" name="cartTotalPrice" onkeyup="inputNumberFormat(this)" readOnly >원
						</div>
					</div>	
					<div class="cartInfo">
						<ul class="cartInfoDetail">
							<li>주문서를 작성하기 전에 선택하신 상품명, 수량 및 가격이 정확한지 확인해주세요.</li>
							<li>해당매장의 주문배달 최소금액은 12,000원 입니다.</li>
						</ul>
						<div class="addCartList" onclick="location.href='Detail1'">메뉴추가 +</div>
						<input type="submit" class="payment" value="주문하기">
					</div>
			</div>
			</form>
		</c:otherwise>
	</c:choose>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>   	