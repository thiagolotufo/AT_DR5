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
			<h2>Sistema de Pedidos</h2>
			<h5>Acesse seu portal</h5>

			<form action="/usuario/login" method="post">
				<div class="form-group">
					<label>Email:</label>
					<p>
						<input type="text" class="form-control" name="email">
					</p>
					<label>Senha:</label>
					<p>
						<input type="password" class="form-control" name="senha">
					</p>
				</div>

				<div class="conteudo-table conteudo">
					<button type="submit" class="btn btn-outline-secondary">Login</button>
				</div>
				
				<div class="separador"></div>

				<c:if test="${not empty msg}">
					<div class="alert alert-danger">
						<strong>Login falhou. </strong> ${msg}
					</div>
				</c:if>
			</form>

			<div class="separador"></div>

			<form action="/usuario" method="get">
				<button type="submit" class="btn btn-outline-secondary">Cadastrar usuario</button>
			</form>

		</div>
	</div>
</body>
</html>