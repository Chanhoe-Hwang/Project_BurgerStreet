<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="script/jquery-3.5.1.js"></script>
<script>
	$.ajax({
		  url: "https://dapi.kakao.com/v2/local/search/address.json",
		  type: 'get',
		  headers: {'Authorization: KakaoAK 0bed5931094128a38aea38a475472cb1'}
	}).done(function() {
		  $( this ).addClass( "done" );
		});
</script>
<body>
	<h1>배달받을주소</h1>
	
</body>
</html>