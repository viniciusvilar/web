<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Livro</title>
</head>
<body>
	<h1>Cadastro de Livro</h1>
	<div>
		<form action="livros" method="post">
			<table>
				<tr>
					<td><input type="number" id="idCode" name="nameCode" placeholder="Insira o Código"/></td>
				<tr/>
				
				<tr>
					<td><input type="text" id="idName" name="nameName" placeholder="Insira o Nome"/></td>
				<tr/>
				
				<tr>
					<td><input type="submit" id="idSend" name="nameSend" value="Enviar"/></td>
				</tr>
			</table>
		</form>
	</div>
	<br />
	
	<div>
		<c:forEach items="${livros}" var="livro">
			<ol><li>${livro.id}</li></ol>
			<ol><li>${livro.name}</li></ol>
		</c:forEach>
	</div>
</body>
</html>