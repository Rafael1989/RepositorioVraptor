package br.com.caelum.produtos.component;

import javax.enterprise.context.SessionScoped;

import br.com.caelum.produtos.model.Usuario;
//@Component
@SessionScoped
public class UsuarioLogado {
	private Usuario usuarioLogado;
	
	public void efetuaLogin(Usuario usuario){
		this.usuarioLogado = usuario;
	}
	
	public Usuario getUsuario(){
		return this.usuarioLogado;
	}
	
}
