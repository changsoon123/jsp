<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- <%
		int total = 0;
		for(int i=1; i<=100; i++){
			total += i;
		}
		out.print("<h4>1부터 100까지의 누적합:" + total + "<h4>");
		
	%> --%>
	
	<%--
		<c:set> 태그는 변수의 생성과 동시에, 이미 동일한 이름의 데이터가 존재한다면
		기존의 데이터를 지목해서 값을 변경할 때도 사용한다.
		마치 setAttribute()에서 이미 존재하는 이름을 지목하여 값을 변경하는 것처럼.
	 --%>
	
	<c:set var="total" value="0" />
	<c:forEach var="i" begin="1" end="100" step="1">
		<c:set var="total" value="${total + i}"/>
	</c:forEach>
	
	<h4>1부터 100까지의 누적합: ${total}</h4>

	<h4>구구단 4단</h4>
	<%-- <% for(int hang=1; hang<=9; hang++){ %>
		4 x <%=hang %> = <%= 4*hang %> <br>
	<% } %> --%>
	
	<c:forEach var="h" begin="1" end="9"> <%-- step을 생략 시 자동으로 1로 처리됨. --%>
		4 x ${h} = ${4*h} <br>	
	</c:forEach>
	<h4>--------------------------------------</h4> <br>
	<%-- 구구단을 2~9단까지 출력하는데, 짝수단만 출력 --%>
	
	<c:forEach var="i" begin="2" end="9" step="2">
		<c:forEach var="j" begin="1" end="9">
			${i} x ${j} = ${i*j} <br>
		</c:forEach>
		
	</c:forEach>
	
	<hr>
	
	<h2>배열이나 컬렉션 내부의 값을 출력</h2>
	
	<c:set var="arr" value="<%= new int[] {1,3,5,7,9}%>" />
	
	<c:forEach var="n" items="${arr}">
		${n} &nbsp;
	</c:forEach>
	
	<c:set var="list" value='<%=Arrays.asList("가","나","다","라","마") %>'/>
	
	<c:forEach var="str" items="${list}">
		<br> ${str} 
	</c:forEach>
	
</body>
</html>