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
						<ul class="navbar-nav mr-auto">
							<li class="nav-item"><a class="nav-link" href="#">
									<form action="/cliente" method="get">
										<input class="link-menu" type="submit"
											value="Cadastrar cliente">
									</form>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#">
									<form action="/pedido" method="get">
										<input class="link-menu" type="submit"
											value="Cadastrar pedido">
									</form>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#">
									<form action="/usuario" method="get">
										<input class="link-menu" type="submit"
											value="Cadastrar usuario">
									</form>
							</a></li>
						</ul>
					</ul>
					<span class="separador-hor"></span>
					<form>
						<button class="btn btn-outline-secondary" type="submit">Olá,
							${user.nome}</button>
					</form>
				</div>
			</section>
		</nav>
	</section>
	<section class="container">
		<section class="container-meio">
			<div class="conteudo">
				<h2>${user.nome}</h2>
				<h5>${user.email}</h5>
				<a href="${user.git}"> <img src="../img/git-img.png"
					alt="descrição da imagem" width="120" height="120" />
				</a>
				<h6>${git}</h6>

			</div>

		</section>
	</section>

</body>

<footer class="footer-min">
	<section class="container">© 2021 DistriMed - Todos os
		Direitos Reservados. - Desenvolvimento: Thiago Lotufo Macedo.</section>
</footer>

</html>