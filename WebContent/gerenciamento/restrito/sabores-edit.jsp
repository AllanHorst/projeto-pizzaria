<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pizzaria</title>
	<link rel="stylesheet" type="text/css" href="../../public/css/style.min.css">
</head>
<body>

	<c:import url="cabecalho.jsp" />
	
	<div class="container">

	<aside>
		<ul class="pizzaria-menu">
			<li>
				<a href="clientes.jsp">Clientes</a>
			</li>
			<li class="active">
				<a href="sabores.jsp">Sabores</a>
			</li>
			<li>
				<a href="pedidos.jsp">Pedidos</a>
			</li>
		</ul>
	</aside>

	<article>
		<h3>Dados do Sabor</h3>

			<form action="cadSabor" method="post">
			<div>
				<input class="pizza-input" type="text" name="nome" placeholder="Digite o nome">
			</div>
			
			<div>
			<textarea rows="3" class="pizza-input" name="descricao" placeholder="Digite uma descrição"></textarea>
			</div>

			<div>
				<a class="btn" href="sabores.jsp">Cancelar</a>
				<input class="btn btn-submit" type="submit" name="send" value="Enviar">
			</div>
		</form>
	</article>
</div>
</body>
</html>