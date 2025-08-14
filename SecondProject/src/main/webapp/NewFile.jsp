<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int a = 10;
	String name = "Shivani";

	int square() {
		return a * a;
	}%>

	<%
	out.println("a: " + a);
	out.println("Name : " + name);
	out.println("Square : " + square());

	int b = 20;
	if (b < 100) {
		out.println("b is smallerr than 100");
	} else {
		out.println("bis greater than 100");
	}

	for (int i = 0; i <= 5; i++) {
		out.println(i);
	}
	out.println();
	%>
	
	<%= a %>
	<%= name %>
	
	
	<%= Math.random() %>
</body>
</html>