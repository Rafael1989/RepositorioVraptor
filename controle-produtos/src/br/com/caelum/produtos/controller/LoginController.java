package br.com.caelum.produtos.controller;

import br.com.caelum.produtos.component.UsuarioLogado;
import br.com.caelum.produtos.dao.UsuarioDAO;
import br.com.caelum.produtos.model.Usuario;
import br.com.caelum.vraptor.Result;

public class LoginController {
	private UsuarioDAO usuarioDAO;
	private UsuarioLogado usuarioLogado;
	private Result result;
	
	public LoginController(UsuarioDAO usuarioDAO, UsuarioLogado usuarioLogado, Result result){
		this.usuarioDAO = usuarioDAO;
		this.usuarioLogado = usuarioLogado;
		this.result = result;
	}
	
	public void autentica(Usuario usuario){
		Usuario autenticado = usuarioDAO.buscaUsuarioPorLoginESenha(usuario);
		if(autenticado != null){
			usuarioLogado.efetuaLogin(autenticado);
			result.redirectTo(ProdutoController.class).lista();
			return;
		}
		result.redirectTo(LoginController.class).formulario();
	}
	
	public void formulario() {
		// TODO Auto-generated method stub
		
	}
}
