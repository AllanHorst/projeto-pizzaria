<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pizzaria</title>

<link rel="stylesheet" type="text/css" href="../public/css/style.min.css">
</head>
<body>

	<c:import url="cabecalho.jsp" />

<section class="pizzaria-fatality" id="fatality">
<h2 class="pizzaria-title">ACESSO</h2>
<h4 class="pizzaria-sub-title">Se você já é cadastrado, informe seu usuário e senha para prosseguir::</h4>

	<form method="post" action="efetuarLogin">
		Login (e-mail): <br />
		<input class="pizza-input" type="text" name="login" size="25" value="${login}"/> <br />
		
		Senha: <br />
		<input class="pizza-input" type="password" name="senha" size="25"/> <br />
		
		<input class="btn btn-submit" type="submit" value="Entrar" /> 
		
		<br />
		<p style="color: red">${erro_login}</p>
		
	</form>
	
</section>
</body>
</html>