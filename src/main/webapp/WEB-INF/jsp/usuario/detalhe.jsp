<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<title>Página de usuários</title>
</head>
<body>
	<div class="container">
		<div class="conteudo-form">
			<h3>Formulário de Cadastro</h3>
			<form action="usuario/incluir" method="post">
				<div class="form-group">
					<label>Nome:</label>
					<p>
						<input type="text" class="form-control" name="nome">
					</p>
					<label>E-mail:</label>
					<p>
						<input type="text" class="form-control" name="email">
					</p>
					<label>CPF:</label>
					<p>
						<input type="text" class="form-control" name="cpf">
					</p>
					<label>Telefone:</label>
					<p>
						<input type="text" class="form-control" name="telefone">
					</p>

				</div>

				<div class="conteudo-table conteudo">
					<button type="submit" class="btn btn-outline-secondary">Cadastrar</button>
				</div>
			</form>

			<div class="separador"></div>
			<form action="/" method="get">
				<button type="submit" class="btn btn-outline-secondary">Voltar</button>
			</form>
			<div class="separador"></div>
			
			<div class="conteudo-table">
				<c:if test="${not empty usuarios}">
					<h3>Listagem de usuarios:</h3>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Descrição</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="u" items="${usuarios}">
								<tr>
									<td>${u.nome}</td>
									<td>${u.email}</td>
									<td>${u.cpf}</td>
									<td>${u.telefone}</td>
									<td><a class="icon-links" href="/usuario/${u.id}/excluir">
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
				<c:if test="${empty usuarios}">
					<h3>Nenhum pedido cadastrado!</h3>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>