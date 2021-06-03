<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/memberheaderfooter/header2.jsp" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" type="text/css" href="css/boardmain.css">
<script type="text/javascript">
function open_win(url, name){
	window.open(url, name, "toolbar=no, menubar=no, scrollbars=no, "
			+ " resizable=no, width=500, height=230");
}
</script>
<div id="wrap" align="center">
<h1>고객 센터</h1>
<table>
	<tr><th width="150">작성자</th><td width="335">${board.userid}</td>
		<th width="150">이메일</th><td width="335">${board.email}</td></tr>
	<tr><th>작성일</th><td colspan="3"><fmt:formatDate value="${board.writedate}"/></td></tr>
	<tr><th>제목</th><td colspan="3">${board.title}</td></tr>
	<tr><th>내용</th><td valign="top">${board.content}</td>
	<th>이미지</th><td align="center" valign="top">
	
	<c:choose>
		<c:when test="${empty board.image}">
			<img src="/upload/noimage.jpg" width="300">
		</c:when>
		<c:otherwise>
			<img src="/upload/${board.image}" width="300">
		</c:otherwise>
	</c:choose>
	<tr><th align="center">답변 내용</th><td align="left" colspan="3">${board.reply}</tr>
	</td></tr>
</table><br> <br>
<input type="button" value="게시글 리스트" onclick="location.href='boardmain'">
</div>
<br />
<%@ include file="/WEB-INF/views/include/footer_top.jsp" %>    
<%@ include file="/WEB-INF/views/include/footer.jsp" %>