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
				<form action="pedido/incluir" method="post">
					<div class="form-group">
						<label>Descrição:</label>
						<p>
							<input type="text" class="form-control" name="descricao" required>
						</p>
						<label>Valor total:</label>
						<p>
							<input type="text" class="form-control" name="valorTotal"
								required>
						</p>
						<label>Forma de pagamento:</label>
						<p>
							<select name="formaDePagamento">
								<option value="Cartao de debito">Cartão de débito</option>
								<option value="Cartao de credito">Cartão de crédito</option>
								<option value="Boleto bancario">Boleto bancário</option>
								<option value="Dinheiro">Dinheiro</option>

							</select>
						</p>
					</div>

					<div class="form-group">
						<label>Informe o cliente:</label> <select class="form-control"
							name="cliente.id">
							<c:forEach var="c" items="${clientes}">
								<option value="${c.id}">${c.nome}</option>
							</c:forEach>
						</select>
					</div>
					<label>Endereço de entrega:</label> <select class="form-control"
						name="enderecoEntrega">
						<c:forEach var="c" items="${clientes}">
							<option value="${c.endereco}">${c.endereco}</option>
						</c:forEach>
					</select>

					<div class="conteudo-table conteudo">
						<button type="submit" class="btn btn-outline-secondary">Cadastrar</button>
					</div>
				</form>

				<div class="separador"></div>
				<div class="conteudo-table">
					<c:if test="${not empty pedidos}">
						<h3>Listagem de pedidos:</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Descrição</th>
									<th>Valor total</th>
									<th>Cliente</th>
									<th>Opções</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="p" items="${pedidos}">
									<tr>
										<td>${p.descricao}</td>
										<td>${p.valorTotal}</td>
										<td>${p.cliente.nome}</td>
										<td><a class="icon-links" href="/pedido/${p.id}/excluir">
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
					<c:if test="${empty pedidos}">
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