<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<body>
		<h2>Login no Controle de Produtos</h2>
		<form action="<c:url value="/login/autentica"/>">
			Login: <input type="text" name="usuario.login" /><br/>
			Senha: <input type="password" name="usuario.senha"/>
			<input type="submit" value="Autenticar"/>
		</form>
	</body>
</html>