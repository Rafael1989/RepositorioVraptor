package br.com.caelum.produtos.controller;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;

import br.com.caelum.produtos.dao.ProdutoDAO;
import br.com.caelum.produtos.model.Produto;
import br.com.caelum.produtos.util.HibernateUtil;
import br.com.caelum.vraptor.Result;

@Resource
public class ProdutoController {

	private ProdutoDAO produtoDAO;
	private Result result;
	private Session session = new HibernateUtil().getSession();
	
	public ProdutoController(Result result, ProdutoDAO produtoDAO) {
		this.result = result;
		this.produtoDAO = produtoDAO;
	}
	
	public void formulario(){
		
	}
	
	public List<Produto> lista(){
		return this.produtoDAO.lista();
	}
	
	public void adiciona(Produto produto){
		produtoDAO.salva(produto);
		result.redirectTo(ProdutoController.class).lista();
	}
	
	public void remove(Produto produto){
		produtoDAO.remove(produto);
		//result.redirectTo(ProdutoController.class).lista();
	}
}
