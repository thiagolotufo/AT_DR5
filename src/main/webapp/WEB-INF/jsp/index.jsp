<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AT - Java Web</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<div class="conteudo">
			<h2>${nome}</h2>
			<h5>${email}</h5>
			<a href="${git}"> <img src="<c:url value="${urlImagem}"/>"
				alt="descrição da imagem" width="120" height="120" />
			</a>
			<h6>${git}</h6>

			<form action="/pedido" method="get">
				<button type="submit" class="btn btn-outline-secondary">Cadastrar pedido</button>
			</form>
			<div class="separador"></div>
			<form action="/cliente" method="get">
				<button type="submit" class="btn btn-outline-secondary">Cadastrar cliente</button>
			</form>
		</div>
	</div>
</body>
</html>