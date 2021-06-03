<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/include/adminheader.jsp" %>
<script type="text/javascript" src="<c:url value='script/product.js' />"></script>
<article>
<h1>상품등록</h1>  
<form name="frm" method="post" enctype="multipart/form-data">
<table id="list">
	<tr><th>상품분류</th>
		<td colspan="5"><select name="kind">
    	<c:forEach items="${kindList}" var="kind" varStatus="status">
      		<option value="${status.count}">${kind}</option>
   		</c:forEach>
  	</select></td>
<tr><th>상품명</th>
  <td width="343" colspan="5">
       <input type="text" name="name" size="47" maxlength="100" >
  </td></tr>
<tr><th>판매가</th>
	  <td width="70">
	     <input type="text" name="price" size="11" >
	  </td>
</tr>
<tr>
    <th>상세설명</th>
    <td colspan="5">
      <textarea name="content" rows="8" cols="70" ></textarea>
    </td>
  </tr>
  <tr>
    <th>상품이미지</th>
    <td width="343" colspan="5">
      <input type="file" name="image">
    </td>
  </tr>    
</table>
<input class="btn" type="button" value="등록" onClick="go_save()">           
<input class="btn" type="button" value="취소" onClick="go_mov()">
</form> 
</article>
</body>
</html>