<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String user_id = (String)session.getAttribute("user_id");
    String user_nick = (String)session.getAttribute("user_nick");
    out.print(user_nick + "님이 접속중입니다.");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center">
			<table border="1">
			<tr>
				<th>앨범 커버</th>
				<th>가수</th>
				<th>제목</th>
				<th>발매일</th>
			</tr>
			<tr>
			<td>
				<img alt="pic1" src="basic.jpg" width="100px" height="100px">
			</td>
			<td>IVE 아이브</td>
			<td>
			<a href="req_album.jsp?title=sel1">I AM</a>
			</td>
			<td>2023.04.10</td>
			
			</tr>
			<tr>
				<th>앨범 커버</th>
				<th>가수</th>
				<th>제목</th>
				<th>발매일</th>
			</tr>
			<tr>
			<td>
				<img alt="pic1" src="basic.jpg" width="100px" height="100px">
			</td>
			<td>IVE 아이브</td>
			<td>
			<a href="req_album.jsp?title=sel2">무슨 노래야</a>
			</td>
			<td>2023.04.10</td>
			
			</tr>
			</table>
	</div>

</body>
</html>