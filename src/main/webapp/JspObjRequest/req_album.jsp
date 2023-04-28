<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%!
  public class First{
	
}
%>


<body>
<% 
	
	
	
	
	String title = request.getParameter("title");
	
	//String name = request.getParameter("name");
	
%>	
	<%
    
	
    if(title.equals("sel1")){
    %>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/aeJOyqdsMlU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    <%
    } else if(title.equals("sel2")){
    %>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/ZMYR5s9DoTs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    <%
    }
    %>
	
		

</body>
</html>