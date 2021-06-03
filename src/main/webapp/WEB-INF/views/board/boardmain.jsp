<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header2.jsp" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type="text/css" href="css/boardmain.css">
<div id="wrap" align="center">
<h1>고객센터</h1>
<table class="list">
	<ul style="font-size: 150%;">
		<li>고객센터 번호 : 010-2747-2271</li>
	</ul>
	<tr><td colspan="5" style="border: white; text-align: right">
		<div style="float:right;"><a href="boardWriteForm">게시글 등록</a></div>	</td>
	</tr>
	<tr><th>번호</th><th>문의제목</th><th>작성자</th><th>작성일</th><th>답변 여부</th></tr>
	<c:forEach var="board" items="${boardList}">
		<tr class="record">	<td align="center">${board.num }</td>
			<td><a href="boardView?num=${board.num}">	${board.title}</a>
				
			</td>
			<td align="center">${board.userid}</td>
			<td align="center"><fmt:formatDate value="${board.writedate}" /></td>
			<td align="center">
				<c:choose >
			        <c:when test="${board.rep==1}"> no </c:when>
			        <%-- <c:otherwise> yes </c:otherwise> --%>
			        <c:when test="${board.rep==2}"> yes </c:when>
				</c:choose>
			</td> 
		</tr>
	</c:forEach>
</table><br>
<div id="paging">
	<c:if test="${paging.prev}">
		<a href="boardmain?page=${paging.beginPage-1}">◀</a></c:if> 
	<c:forEach begin="${paging.beginPage}" end="${paging.endPage}" step="1" var="index">
	    <c:choose>
	        <c:when test="${paging.page==index}"> ${index} </c:when>
	        <c:otherwise><a href="boardmain?page=${index}">${index}</a></c:otherwise>
	    </c:choose>
	</c:forEach>
	<c:if test="${paging.next}">
		<a href="boardmain?page=${paging.endPage+1}">▶</a></c:if>
</div>
</div>
<%@ include file="/WEB-INF/views/include/footer_top.jsp" %>    
<%@ include file="/WEB-INF/views/include/footer.jsp" %>