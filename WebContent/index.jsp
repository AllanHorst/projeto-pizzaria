<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pizzaria</title>
	<link rel="stylesheet" type="text/css" href="public/css/style.min.css">
</head>
<body>

	<c:import url="cabecalho.jsp" />
	
<form  method="post" action="escolhaSabor">

	<section class="pizzaria-list">
	<h2 class="pizzaria-title">SELECIONE O TAMANHO DESEJADO</h2>
	<h4 class="pizzaria-sub-title">fique a vontade:</h4><br><br>
		<ul>
			<li class="pizzaria-item-pizza">
				<label for="pequena">
					<img class="pizzaria-img-pizza" src="public/img/pizza-pequena.gif" alt="">
					<input class="in" name="tamanho" id="pequena" type="radio" value="1" checked required>
					<h2 class="pizzaria-title-pizza">Pequena</h2>
					<span class="pizzaria-resume-pizza">6 fatias | 30cm</span>
				</label>
			</li>
			<li class="pizzaria-item-pizza">
				<label for="media">
					<img class="pizzaria-img-pizza" src="public/img/pizza-media.gif" alt="">
					<input class="in" name="tamanho" id="media" type="radio" value="2" required>
					<h2 class="pizzaria-title-pizza">Média</h2>
					<span class="pizzaria-resume-pizza">8 fatias | 35cm</span>
				</label>
			</li>
			<li class="pizzaria-item-pizza">
				<label for="grande">
					<img class="pizzaria-img-pizza" src="public/img/pizza-grande.gif" alt="">
					<input class="in" name="tamanho" id="grande" type="radio" value="3" required>
					<h2 class="pizzaria-title-pizza">Grande</h2>
					<span class="pizzaria-resume-pizza">8 fatias | 40cm</span>
				</label>
			</li>
		</ul>
		<input type="submit" class="btn btn-next" value="Próximo" />

	</section>

</form>

</body>
</html>