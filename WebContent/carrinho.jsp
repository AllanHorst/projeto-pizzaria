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
	
	
	
	
<section class="pizzaria-fatality" id="fatality">
<h2 class="pizzaria-title">RESUMO DO PEDIDO</h2>
<h4 class="pizzaria-sub-title">Veja os detalhes antes de finalizar:</h4>


	<c:choose>
		<c:when test="${itensCarrinho != null}">
	<ul>
		<c:forEach items="${itensCarrinho}" var="item">
		<div>
		<li class="item-fatality">
			<img src="public/img/pizza.png" width="256" class="img-fatality" alt="">
			
		</li>
		<li class="item-fatality">
			<div class="img-fatality">
				<h5>Tamanho da PIZZA: <strong>${item.produto.descricao}</strong></h5>
				<h5>Sabor da PIZZA: <strong>${item.produto.sabor}</strong></h5>
				<h5>Quantidade: <strong>${item.quantidade}</strong></h5>
				<h5>Quantidade: <strong>${item.quantidade}</strong></h5>
				<h5>Total: <strong>
					<fmt:formatNumber value="${item.quantidade * item.valor}"
									type="currency" currencySymbol="R$ "/>
				</strong></h5>
				<h5>sub-total: <strong>
				<fmt:formatNumber value="${item.valor}"
									type="currency" currencySymbol="R$ "/> 
				</strong></h5>
			</div>
		</li>
		<li class="item-fatality">
			<a href="#" style="text-align: center; display: block;"> Continuar Comprando</a>
		</li>
		</div>	
				</c:forEach>

	</ul>
	<div style="clear: both"></div>
	<div class="">
		<a class="btn" href="listarProdutos">Voltar</a>
		<a class="btn" href="restrito/finalizacao.jsp">Finalizar Pedido</a>
	</div>
	
					</c:when>
		<c:otherwise>
		<p>
				Seu carrinho está vazio! <br />
				<a href="listarProdutos">Visualizar Produtos</a>
			</p>
		</c:otherwise>
	</c:choose>	

</section>


</body>
</html>