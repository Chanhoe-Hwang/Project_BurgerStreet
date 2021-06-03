<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/include/adminheader.jsp" %>
<script type="text/javascript">
	function go_list(){
		var theForm = document.frm;
		theForm.action ="adminBoardList";
		theForm.submit();
	}
	function go_rep(num){
		var theForm = document.frm;
		theForm.num.value = num;
		theForm.action="adminBoardRepsave";
		theForm.submit();
	}
</script>
<article>
<h1>Q&amp;A 게시판</h1>   
<form name="frm" method="post">
<input type="hidden" name="num" >
<table id="orderList">
	<tr><th width="20%">제목</th>
		<td> ${BoardVO.title} ${BoardVO.rep} </td></tr>
	<tr><th>등록일</th>
		<td> <fmt:formatDate value="${BoardVO.writedate}"/> </td></tr>
	<tr><th>내용</th>
		<td> ${BoardVO.content}</td></tr>
</table>
<c:choose>          
	<c:when test='${BoardVO.rep=="1"}'> <!-- 관리자 답변 전 표시 -->
		<table id="orderList">
    		<tr><td colspan="2">
    			<textarea name="reply" rows="3" cols="50"></textarea>
   			<input type="button" class="btn" value="저장" onClick="go_rep('${BoardVO.num}')"></td>
      		</tr>
		</table>
	</c:when>
	<c:otherwise>  <!-- 관리자 답변 완료 후 표시 -->
		<table id="orderList">
			<tr><th>댓글</th><td>${BoardVO.reply}</td></tr>
		</table>
	</c:otherwise>
</c:choose>
<input type="button" class="btn" value="목록" 	onClick="go_list()">
</form>
</article>
</body>
</html>