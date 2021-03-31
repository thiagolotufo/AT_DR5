<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>DistriMed</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
	<section class="bg-menu">
		<nav class="navbar navbar-expand-lg navbar-light ">
			<section class="container">
				<a class="navbar-brand" href="#">
					<h1>
						<strong>Distri</strong>Med
					</h1>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link" href="#">
									<form action="/home" method="get">
										<input class="link-menu" type="submit"
											value="Home">
									</form>
							</a></li>
						<li class="nav-item"></li>
						<li class="nav-item"></li>
					</ul>
					<form>
						<button class="btn btn-outline-secondary" type="submit">Olá,
							${user.nome}</button>
					</form>
				</div>
			</section>
		</nav>
	</section>

	<section class="container">
		<div class="container-meio">
			<div class="conteudo-form">
				<h3>Formulário de Cadastro</h3>
				<form action="usuario/incluir" method="post">
					<div class="form-group">
						<label>Nome:</label>
						<p>
							<input type="text" class="form-control" name="nome" required>
						</p>
						<label>E-mail:</label>
						<p>
							<input type="text" class="form-control" name="email" required>
						</p>
						<label>Senha:</label>
						<p>
							<input type="password" class="form-control" name="senha" required>
						</p>
						<label>CPF:</label>
						<p>
							<input type="text" class="form-control" name="cpf" required>
						</p>
						<label>Telefone:</label>
						<p>
							<input type="text" class="form-control" name="telefone" required>
						</p>
						<label>Link Github:</label>
						<p>
							<input type="text" class="form-control" name="git" required>
						</p>

					</div>

					<div class="conteudo-table conteudo">
						<button type="submit" class="btn btn-outline-secondary">Cadastrar</button>
					</div>
				</form>

				<div class="separador"></div>

				<div class="conteudo-table">
					<c:if test="${not empty usuarios}">
						<h3>Listagem de usuarios:</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Nome</th>
									<th>E-mail</th>
									<th>CPF</th>
									<th>Telefone</th>
									<th>Opções</th>
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
												<img src="<c:url value="img\\icon-trash.png"/>"
												alt="excluir" width="30" height="30" />
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
	</section>
</body>
<footer class="footer"">
	<section class="container">© 2021 DistriMed - Todos os
		Direitos Reservados. - Desenvolvimento: Thiago Lotufo Macedo.</section>
</footer>
</html>