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
			<li class="active">
				<a href="clientes.jsp">Clientes</a>
			</li>
			<li>
				<a href="sabores.jsp">Sabores</a>
			</li>
			<li>
				<a href="pedidos.jsp">Pedidos</a>
			</li>
		</ul>
		</ul>
	</aside>

	<article>
		<h3>Dados de Clientes</h3>
			<table>
				<thead>
					<tr>
						<th>Nome</th>
						<th>E-mail</th>
						<th style="text-align: center">Editar</th>
						<th style="text-align: center">Remover</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>João</td>
						<td>joao@email.com</td>
						<td style="text-align: center"><a class="btn btn-edit" href="clientes-edit.jsp">Editar</a></td>
						<td style="text-align: center"><a class="btn btn-remove" href="#">Excluir</a></td>
					</tr>
				</tbody>
			</table>

<div><a class="btn btn-submit" style="    float: left;
    margin: 39px 0;" href="clientes-edit.jsp">Novo Cliente</a></div>			
	</article>
</div>
</body>
</html>