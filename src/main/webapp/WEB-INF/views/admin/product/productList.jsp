<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/include/adminheader.jsp" %>
<script type="text/javascript" src="<c:url value='script/product.js' />"></script>
<article>
<h1>상품리스트</h1>
<form name="frm" method="post">
<table>
	<tr><td width="642">
		상품명<input type="text" name="key" value="${key}">
		<input class="btn" type="button" name="btn_search" value="검색" 
		onClick="go_search();">
		<input class="btn" type="button" name="btn_total" value="전체보기 "
		onClick="go_total();">
		<input class="btn" type="button" name="btn_write" value="상품등록"  
			onClick="go_wrt();"></td></tr>
</table>
<table id="productList">
	<tr><th>번호</th><th>상품명</th><th>판매가</th><th>등록일</th></tr>
	<c:choose>
    	<c:when test="${productListSize<=0}">
    		<tr><td width="100%" colspan="7" align="center" height="23">
    			등록된 상품이 없습니다.</td></tr>
    	</c:when>
    	<c:otherwise>
    		<c:forEach items="${productList}" var="productVO">
		   		<tr><td height="23" align="center" >${productVO.pseq}</td>
					<td style="text-align:left; padding-left:50px; padding-right:0px;">
					<a href="#" onClick="go_detail('${productVO.pseq}')">${productVO.name}
						</a></td>
					<td><fmt:formatNumber value="${productVO.price}"/></td>
		      		<td><fmt:formatDate value="${productVO.indate}"/></td>
				</tr>
		    </c:forEach> 
    	</c:otherwise>
    </c:choose>
</table>
</form>

<jsp:include page="../../include/paging/paging.jsp">
    <jsp:param value="${paging.page}" name="page"/>
    <jsp:param value="${paging.beginPage}" name="beginPage"/>
    <jsp:param value="${paging.endPage}" name="endPage"/>
    <jsp:param value="${paging.prev}" name="prev"/>
    <jsp:param value="${paging.next}" name="next"/>
    <jsp:param value="adminProductList" name="command"/>
</jsp:include>

</article>
</body>
</html>