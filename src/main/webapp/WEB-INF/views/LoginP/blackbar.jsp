<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#blackbar{position:relative;width:100%;height:124px;}
#blackbar_view{position:relative;width:1100px;height:124px; margin:0 auto;}
#blackbar_left{position:relative;width:440px;height:80px;margin:0 auto;top:30px;
						text-align: left; float: left; cursor:pointer;}
#blackbar_right{position:relative;width:440px;height:80px;margin:20 auto; top:30px;
						text-align: left; float: right; cursor:pointer;}
.Bimg{position:relative;width:100px; float:left}
.wording{position:relative;width:400px;height:80px;margin-top:0px;color:white; 
				 font-size:120%; line-height:20px;}
.cnt{position:absolute; left:170px; top:0px;color:white;font-weight:bold;background:red;
				height:22px;border-radius:50%;width:40px;text-align:center;}
</style>
</head>
<body>

	<div id="blackbar" style="background-image:url('image/Bimage/blackbar.gif');">
		<div id="blackbar_view">
			<div id="blackbar_left" onclick="location.href='orderList'">
				<div class="Bimg">
					<img src="image/Bimage/bike.png">
				</div>
				<div class="wording">
					<span style="font-size:120%;font-weight:strong;">딜리버리 주문 내역</span><br>
					<p>
					<c:choose>
						<c:when test="${orderList!=null}">
							주문해주셔서 감사합니다
						</c:when>
			    		<c:otherwise>
			       			주문내역이 없습니다
						</c:otherwise>
					</c:choose>
					</p>
				</div>
			</div>
			<div id="blackbar_right" onclick="location.href='cartList'">
				<div class="Bimg">
					<img src="image/Bimage/cart.png">
				</div>	
				<div class="wording">
					<span style="font-size:120%;font-weight:strong;">카트</span>
						<div class="cnt">
					
					<c:choose>
						<c:when test="${cartcnt!=0}">
							${cartcnt}
						</c:when>
			    		<c:otherwise>
			       			0
						</c:otherwise>
					</c:choose>
					</div>
					
					<br><p>주문내역</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>