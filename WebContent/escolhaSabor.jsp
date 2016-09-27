<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pizzaria</title>
<link rel="stylesheet" type="text/css" href="public/css/style.min.css">
</head>
<body>


<c:import url="cabecalho.jsp" />


<form action="adicionarCarrinho" method="post">

<section class="pizzaria-choose" id="chooise">
<h2 class="pizzaria-title">ESCOLHA OS SABORES</h2>
<h4 class="pizzaria-sub-title">São 3 sabores neste tamanho de pizza, fique a vontade:</h4>
	<ul>
		<li class="pizzaria-item-pizza">
			<select class="pizzaria-select" name="">
				<option value="">Sabor 1</option>
			</select>
		</li>
		<li class="pizzaria-item-pizza">
			<select class="pizzaria-select" name="">
				<option value=""> Sabor 2</option>
			</select>
		</li>
		<li class="pizzaria-item-pizza">
			<select class="pizzaria-select" name="">
				<option value="">Sabor 3</option>
			</select>
		</li>
	</ul>
	<div class="center">
		<a class="btn btn-back" href="produtos.jsp">Voltar</a>
		<input type="submit" class="btn btn-next" value="Próximo" />
	</div>

</section>


</form>


</body>
</html>