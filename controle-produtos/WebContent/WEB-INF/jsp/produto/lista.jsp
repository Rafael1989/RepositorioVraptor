<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
	<head>
		<script type="text/javascript" src="<c:url value="/js/jquery.js"/>"></script>
	</head>
	<body>
		<script type="text/javascript">
			function removeProduto(id){
				$('#mensagem').load('<c:url value="/produto/remove"/>' + '?produto.id=' + id);
				$('#produto' + id).remove();
			}
		</script>
		<h1>Produtos</h1>
		<div id="mensagem"></div>
		<table>
			<c:forEach var="produto" items="${produtoList}">
				<tr id="produto${produto.id}">
					<td>${produto.nome}</td>
					<td>${produto.preco}</td>
					<td>${produto.descricao}</td>
					<td>
						<fmt:formatDate value="${produto.dataInicioVenda.time}" pattern="dd/MM/yyyy"/>
					</td>
					<td>
						<!-- <a href="<c:url value="/produto/remove"/>?produto.id=${produto.id}">Remover</a> -->
						<a href="#" onclick="return removeProduto(${produto.id})">Remover</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>