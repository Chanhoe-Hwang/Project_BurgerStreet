<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/include/adminheader.jsp" %>
<script type="text/javascript" src="<c:url value='script/product.js' />"></script>
<article>
<h1>상품 상세 보기</h1> 
<form name="frm" method="post">
<table id="list">
	<tr><th>상품분류</th> <td  colspan="5">${kind}</td></tr>    
    <tr><th align="center" >상품 명</th><td colspan="5">${productVO.name}</td></tr>
    <tr><th>판매가 </th> <td width="60">${productVO.price}</td></tr>
    <tr><th>상세설명</th><td colspan="5">${productVO.content}</td> </tr>
    <tr><th>상품이미지</th><td colspan="5" align="center">     
     <img src="image/product/${productVO.image}" width="200pt">    
     </td></tr>
</table>
<input class="btn"  type="button" value="수정" onClick="go_mod('${productVO.pseq}')">
<input class="btn"  type="button" value="목록" onClick="go_mov()">           
</form>
</article>
</body>
</html>