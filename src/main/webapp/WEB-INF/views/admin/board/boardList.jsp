<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/include/adminheader.jsp" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<script type="text/javascript">
  function go_view(num) {
    var theForm = document.frm;
    theForm.num.value = num;
    theForm.action = "adminBoardDetail";
    theForm.submit();
  }
</script>
<article>
<h1>Q&amp;A 게시글 리스트</h1>  
<form name="frm" method="post">
<input type="hidden" name="num">  
<table id="orderList">
  <tr><th>번호(답변여부)</th> <th>제목</th> <th>작성자</th> <th>작성일${fn:length(boardList)}</th></tr>
  
  <c:forEach items="${boardList}" var="board">  
      <tr><td>
      ${board.num}  
      <c:choose>          
        <c:when test='${board.rep=="1"}'>(미처리)</c:when>
        <c:otherwise>(답변처리완료)</c:otherwise>
      </c:choose>      
      </td>
      <td> 
      <a href="javascript:go_view('${board.num}');">
        ${board.title} 
      </a>
      </td>
      <td> ${board.userid} </td>
      <td> <fmt:formatDate value="${board.writedate}"/></td>
      </tr>
    </c:forEach>
    </table>
    
    </form>  
<jsp:include page="../include/paging.jsp">
    <jsp:param value="${paging.page}" name="page"/>
    <jsp:param value="${paging.beginPage}" name="beginPage"/>
    <jsp:param value="${paging.endPage}" name="endPage"/>
    <jsp:param value="${paging.prev}" name="prev"/>
    <jsp:param value="${paging.next}" name="next"/>
    <jsp:param value="adminBoardList" name="command"/>
</jsp:include>
</article>
</body>
</html>