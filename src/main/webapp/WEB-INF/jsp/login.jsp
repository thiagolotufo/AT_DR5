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
					<h1><strong>Distri</strong>Med</h1>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            
                        </li>
                        <li class="nav-item">
                           
                        </li>
                        <li class="nav-item">
                            
                        </li>
                    </ul>
					<form class="form-inline my-2 my-lg-0" action="/usuario" method="get">
						<button class="btn btn-outline-secondary" type="submit">Cadastrar</button>
					</form>
					<span class="separador-hor"></span>
					<form class="form-inline my-2 my-lg-0">
						<button class="btn btn-light" type="submit">Login</button>
					</form>
				</div>
			</section>
		</nav>
	</section>
	
	<section class="container">
	<div class="container-meio">
		<div class="conteudo">
			<h2>Sistema de Pedidos</h2>
			<h5>Acesse seu portal</h5>

			<c:if test="${not empty msg}">
				<div class="alert alert-danger">
					<strong>Login falhou. </strong> ${msg}
				</div>
			</c:if>
			<form action="/usuario/login" method="post">
				<div class="form-group">
					<label>Email:</label>
					<p>
						<input type="text" class="form-control" name="email" required>
					</p>
					<label>Senha:</label>
					<p>
						<input type="password" class="form-control" name="senha" required>
					</p>
				</div>

				<div class="conteudo-table conteudo">
					<button type="submit" class="btn btn-outline-secondary">Login</button>
				</div>

				<div class="separador"></div>

			</form>

			<div class="separador"></div>

			<form action="/usuario" method="get">
				<button type="submit" class="btn btn-outline-secondary">Cadastrar
					usuário</button>
			</form>

		</div>
	</div>
	</section>
</body>
<footer class="footer-min">
	<section class="container">© 2021 DistriMed - Todos os
		Direitos Reservados. - Desenvolvimento: Thiago Lotufo Macedo.</section>
</footer>

</html>
