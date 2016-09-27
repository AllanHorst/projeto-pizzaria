<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="wrapper">
	<header id="header" class="pizzaria-header">
		<div class="pizzaria-logo">
			<a href="#">
				<img src="public/img/logo.png" alt="Pizzaria">
			</a>
		</div>
		<div class="pizzaria-name">
			Pizzaria
		</div>
		<div class="pizzaria-cart">
			<a href="visualizarCarrinho">
				Carrinho
			<c:if test="${qtdeProdutosCarrinho != null}">
				<span class="pizzaria-count">${qtdeProdutosCarrinho}</span> item(ns)					
			</c:if>
			</a>
		</div>
	</header><!-- /header -->
</div>
