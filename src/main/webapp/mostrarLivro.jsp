<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca virtual</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <h1>Biblioteca Virtual</h1>
    </header>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="cadastrarLivro.jsp">Cadastrar Livro</a>
        <a href="http://localhost:8080/web/livros">Livros Cadastrados</a>
    </nav>
    <section>
        <div class="generic">
            <h1>Livros Cadastrados</h1>
        </div>
        <div class="default-div tableBooks">
            <table>
                <thead>
                    <tr>
                        <td>ID</td>
                        <td>Nome do Livro</td>
                    </tr>
                </thead>
                <tbody>
                    
                    	<c:forEach items="${livros}" var="livro">
                    		<tr>
		                        <td>${livro.id}</td>
		                        <td>${livro.name}</td>
	                        </tr>
                        </c:forEach>
                    
                </tbody>
            </table>
        </div>
    </section>
</body>
</html>