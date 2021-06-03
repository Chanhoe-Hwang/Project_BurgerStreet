<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/include/adminheader.jsp" %>
<script type="text/javascript" src="<c:url value='script/product.js' />"></script>
<article>
<h1>상품수정</h1>  
<form name="frm" method="post" enctype="multipart/form-data">
<input type="hidden" name="pseq" value="${productVO.pseq}">
<input type="hidden" name="code" >
<input type="hidden" name="nonmakeImg" value="${productVO.image}">
<table id="list">
  <tr>
    <th>상품분류</th>
    <td colspan="5">
    <select name="kind">
      <c:forEach items="${kindList}" var="kind" varStatus="status">
        <c:choose>
          <c:when test="${productVO.kind==status.count}">
            <option value="${status.count}" selected="selected">${kind}</option>
          </c:when>
          <c:otherwise>
            <option value="${status.count}">${kind}</option>
          </c:otherwise>
        </c:choose>
      </c:forEach>
    </select> 
    </td>
  </tr>
  <tr>
    <th>상품명</th>
    <td width="343" colspan="5">
      <input type="text" name="name" size="47" maxlength="100" value="${productVO.name}">
    </td>
  </tr>
  <tr>
    <th>판매가</th>
    <td width="70">
      <input type="text" name="price" size="11" onBlur="go_ab()" onKeyUp='NumFormat(this)' value="${productVO.price}">
    </td>
  </tr>
  <tr>
    <th>상세설명</th>
    <td colspan="5">
      <textarea name="content" rows="8" cols="70" >${productVO.content}</textarea>
    </td>
  </tr>
  <tr>
    <th>상품이미지</th>
    <td colspan="5">
      <img src="image/product/${productVO.image}" width="200pt">     
      <br>
      <input type="file" name="image"> * 주의 : 이미지를 수정할때에만 선택해주세요.
    </td> 
  </tr>    
</table>
<input class="btn" type="button" value="수정" onClick="go_mod_save('${productVO.pseq}')">           
<input class="btn" type="button" value="취소" onClick="go_mov()">
</form>
</article>
</body>
</html>