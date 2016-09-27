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
			<li>
				<a href="sabores.jsp">Sabores</a>
			</li class="active">
			<li>
				<a href="pedidos.jsp">Pedidos</a>
			</li>
		</ul>
	</aside>

	<article>
		<h3>Dados do Pedido</h3>

			<form action="cadPedido" method="post">
			<div>
			<select class=" pizza-input pizzaria-select" name="idcliente" required title="Selecione um cliente">
				<option value="">Selecione o Cliente</option>
				<option value="2">Nome 1</option>
				<option value="3">Nome 2</option>
				<option value="1">Nome 3</option>
			</select>
			</div>
			
			<div>
			<select class=" pizza-input pizzaria-select" name="idsabor" required>
				<option value="">Selecione o Sabor</option>
				<option value="2">Sabor 1</option>
				<option value="3">Sabor 2</option>
				<option value="1">Sabor 3</option>
			</select>
			</div>
			
			
			<div>
			<select class=" pizza-input pizzaria-select" name="status" required>
				<option value="">Selecione o Status</option>
				<option value="1">Pendente</option>
				<option value="2">No Forno</option>
				<option value="3">Entregando</option>
				<option value="4">Entregue</option>
			</select>
			</div>
			
			<div>

			
			<div>
				<a class="btn" href="pedidos.jsp">Cancelar</a>
				<input class="btn btn-submit" type="submit" name="send" value="Enviar">
			</div>
			
			
		</form>
	</article>
</div>
</body>
</html>