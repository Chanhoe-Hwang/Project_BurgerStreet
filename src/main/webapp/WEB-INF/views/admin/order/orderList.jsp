<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/include/adminheader.jsp" %>
<script type="text/javascript">
  function go_order_save() {
    var count = 0;
    if (document.frm.result.length == undefined) {
      if (document.frm.result.checked == true) {
        count++;
      }
    } else {
      for ( var i = 0; i < document.frm.result.length; i++) {
        if (document.frm.result[i].checked == true) {
          count++;
        }
      }
    }
    
    if (count == 0) {
      alert("주문처리할 항목을 선택해 주세요.");
    } else {
      document.frm.action = "orderSave";
      document.frm.submit();
    }
  }
  
  function go_search_order() {
		var theForm = document.frm;
		if( theForm.key.value=="") return;
		theForm.action =  "adminOrderList";
		theForm.submit();
	}
	function go_total_order() {
		var theForm = document.frm;
		theForm.key.value="";
		theForm.action =  "adminOrderList";
		theForm.submit();
	}
</script>



<article>
<h1>주문리스트</h1>
<form name="frm" method="post">
  <table style="float: right;">
    <tr>
      <td>주문자 이름 <input type="text" name="key" value="${key2}"> 
      <input class="btn" type="button" value="검색" onclick="go_search_order()">
      <input class="btn" type="button" name="btn_total" value="전체보기 " 	onClick="go_total_order()">					
      <input type="hidden" name="all_view" value="y">
      </td>
    </tr>
  </table>
  <br>
  <table id="orderList">
  <tr>
    <th>주문번호(처리여부)</th><th>주문자</th><th>상품명</th><th>수량</th>
    <th>우편번호</th><th>배송지</th><th>전화</th><th>주문일</th>
  </tr>
  <c:forEach items="${orderList}" var="orderVO">
  <tr>
    <td>
      <c:choose>
        <c:when test='${orderVO.result=="1"}'>
        <span style="font-weight: bold; color: blue">${orderVO.odseq}</span>
        (<input type="checkbox" name="result" value="${orderVO.odseq}"> 미처리)
        </c:when>
        <c:otherwise>
          <span style="font-weight: bold; color: red">${orderVO.odseq}</span>
          (<input type="checkbox" checked="checked" disabled="disabled">처리완료)
        </c:otherwise>
      </c:choose>
    </td>
    <td>${orderVO.mname}</td> <td>${orderVO.pname}</td>
    <td>${orderVO.quantity}</td> <td>${orderVO.zipnum}</td>
    <td>${orderVO.address}</td>  <td>${orderVO.phone}</td>
    <td><fmt:formatDate value="${orderVO.indate}" /></td>
  </tr>
  </c:forEach>
  </table>
  <br>
  <input type="button" class="btn" style="width: 200px"
      value="주문처리(입금확인)" onClick="go_order_save()">
</form>

<jsp:include page="../include/paging.jsp">
    <jsp:param value="${paging.page}" name="page"/>
    <jsp:param value="${paging.beginPage}" name="beginPage"/>
    <jsp:param value="${paging.endPage}" name="endPage"/>
    <jsp:param value="${paging.prev}" name="prev"/>
    <jsp:param value="${paging.next}" name="next"/>
    <jsp:param value="adminOrderList" name="command"/>
</jsp:include>
</article>
</body>
</html> 