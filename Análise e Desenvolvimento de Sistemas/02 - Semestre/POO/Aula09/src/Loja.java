import java.util.Collections;
import java.util.Arrays;
import java.util.List;

import entidades.Produto;

public class Loja {
	
	private int ano;
	private int qntFuncionarios;
	private Produto[] produtos;
	
	public Loja(int ano, int qntFuncionarios, Produto[] produtos)	{
		this.ano = ano;
		this.qntFuncionarios = qntFuncionarios;
		this.produtos = produtos;
	}
	
	public double precoMaisCaro()	{
		double valor = produtos[0].getPreco();
		for (int i = 0; i < produtos.length; i++)	{
			if (produtos[i].getPreco() > valor)	{
				valor = produtos[i].getPreco();
			}
		}
		return valor;
	}
	
	public double precoMaisBarato()	{
		double valor = produtos[0].getPreco();
		for (int i = 0; i < produtos.length; i++)	{
			if (produtos[i].getPreco() < valor)	{
				valor = produtos[i].getPreco();
			}
		}
		return valor;
	}
	
	public double mediaPreco()	{
		double soma = 0.0;
		for (int i = 0; i < produtos.length; i++)	{
			soma = soma + produtos[i].getPreco();
		}
		return soma/produtos.length;
	}
	
	public String maiorQuantidadeProdutos()	{
		int[] cnt = new int[4];
		for (int i = 0; i < produtos.length; i++)	{
			int ident = produtos[i].getIdentificador();
			cnt[ident-1]++;
		}
		
		String produtoMaior = "Celular";
		int quantidade = cnt[0];
		for (int i = 0; i < 4; i++)	{
			if (cnt[i] > quantidade)	{
				quantidade = cnt[i];
				produtoMaior = "?"; //TODO
			}
		}
		
		return produtoMaior;
	}
	
	public Double[] ordenaVetor(Double[] produtos) {
		
		Double[] arr = produtos; 
		Arrays.sort(arr);
		return arr;  
	}
	
	public int getAno() {
		return ano;
	}
	
	public int getQntFuncionarios() {
		return qntFuncionarios;
	}
	
	public Produto[] getProdutos() {
		return produtos;
	}
	
	public void setAno(int ano) {
		this.ano = ano;
	}
	
	public void setQntFuncionarios(int qntFuncionarios) {
		this.qntFuncionarios = qntFuncionarios;
	}
	
	public void setProdutos(Produto[] produtos) {
		this.produtos = produtos;
	}
	
	
}
