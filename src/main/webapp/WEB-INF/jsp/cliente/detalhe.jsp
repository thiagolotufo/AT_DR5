<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App AT</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<div class="conteudo-form">
			<h3>Formulário de Cadastro</h3>
			<form action="cliente/incluir" method="post">
				<div class="form-group">
					<label>Nome:</label>
					<p>
						<input type="text" class="form-control" name="nome">
					</p>
				</div>

				<div class="conteudo-table conteudo">
					<button type="submit" class="btn btn-outline-secondary">Cadastrar</button>
				</div>
			</form>

			<div class="separador"></div>
			<form action="/home" method="get">
				<button type="submit" class="btn btn-outline-secondary">Home</button>
			</form>
			<div class="separador"></div>
			<div class="conteudo-table">
				<c:if test="${not empty clientes}">
					<h3>Listagem de clientes:</h3>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Descrição</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="c" items="${clientes}">
								<tr>
									<td>${c.nome}</td>
									<td><a class="icon-links" href="/cliente/${c.id}/excluir">
											<img src="<c:url value="img\\icon-trash.png"/>" alt="excluir"
											width="30" height="30" />
									</a> <a class="icon-links" href="/"> <img
											src="<c:url value="img\\icon-edit.png"/>" alt="editar"
											width="30" height="30" /></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${not empty msg}">
					<div class="alert alert-danger">
						<strong>Exclusão falhou. </strong> ${msg}
					</div>
				</c:if>
				<c:if test="${empty clientes}">
					<h3>Nenhum cliente cadastrado!</h3>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>
