<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<html>
	<head>
		<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src='<c:url value="/js/jquery.js"/>'></script>
		<script type="text/javascript" src='<c:url value="/js/jquery-ui.min.js"/>'></script>
	</head>
	<body>
		<form action='<c:url value="/produto/adiciona"/>'>
			Nome: <input name="produto.nome"/><br/>
			Descrição: <input name="produto.descricao"/><br/>
			Preço: <input name="produto.preco"/><br/>
			Data de início da venda:
			<caelum:campoData id="dataInicioVenda" name="produto.dataInicioVenda"/><br/>
			<input type="submit" />
		</form>
	</body>
</html>
