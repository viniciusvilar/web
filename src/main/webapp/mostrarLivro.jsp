<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livros cadastrados</title>
</head>
<body>
	<h1>Livros cadastrados</h1>
	<table>
		<tr>
			<c:forEach items="${livros}" var="livro">
				<td>${livro.id}</td>
				<td>${livro.name}</td>
			</c:forEach>
		</tr>
	</table>
</body>
</html>