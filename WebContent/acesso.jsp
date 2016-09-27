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
	<br/><br/><br/><br/><br/>
	<h4 class="pizzaria-sub-title">Se ainda não for cadastrado, informe seus dados para prosseguir:</h4>
	<form method="post" action="efetuarCadastro">
		Nome: <br />
		<input type="text" class="pizza-input" name="nome" size="50" value="${cliente.nome}"/> <br />
		
		Endereço: <br />
		<textarea cols="50" class="pizza-input" rows="5" name="endereco">${cliente.endereco}</textarea><br/>
		
		E-mail: <br/>
		<input type="text" class="pizza-input" name="email" size="25" value="${cliente.email}"/> <br/>
		
		Senha: <br/>
		<input type="password" class="pizza-input" name="senha" size="25" /> <br/>

		<input type="submit" class="btn btn-submit" value="Cadastrar" /> <br />

		<p style="color: red">${erro_cadastro}</p>

	</form>
</section>
</body>
</html>