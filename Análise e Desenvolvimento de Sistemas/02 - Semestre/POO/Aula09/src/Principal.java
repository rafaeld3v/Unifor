import java.text.DecimalFormat;
import java.util.Random;
import java.util.Scanner;

import entidades.Celular;
import entidades.Computador;
import entidades.Produto;
import entidades.Som;
import entidades.Televisao;

public class Principal {
	
	public static String geraPalavra()	{
		Random rand = new Random();
		int tamanho = 1 + rand.nextInt(8);
		String nome = "";
		String alfabeto = "abcdefghijklmnopqrstuvwxyz";
		for (int i = 0; i < tamanho; i++)	{
			int posicao = rand.nextInt(alfabeto.length());
			nome = nome + alfabeto.charAt(posicao);
		}
		return nome;
	}

	public static void main(String[] args) {
				
		int n = 100;
		DecimalFormat df = new DecimalFormat("#,##");
				
		Produto[] produtos = new Produto[n];
		
		//O ELEMENTO NA POS 0, É CEL, COMP, SOM OU TV?
		//O ELEMENTO NA POS 1, É CEL, COMP, SOM OU TV?
		//O ELEMENTO NA POS 2, É CEL, COMP, SOM OU TV?
		//O ELEMENTO NA POS 3, É CEL, COMP, SOM OU TV?
		//O ELEMENTO NA POS 4, É CEL, COMP, SOM OU TV?
		
		for (int i = 0; i < n; i++)	{
			double num = Math.random();

			if (num >= 0 && num < 0.25)	{
				String modelo = geraPalavra();
				double preco = Double.parseDouble(df.format(Math.random() * 100));
				double peso = Double.parseDouble(df.format(Math.random() * 100));
				boolean vemFone = false;
				if (Math.random() < 0.5)	{
					vemFone = true;
				}
				produtos[i] = new Celular("Celular", 1, modelo, preco, peso, vemFone);			
			}/* else if (num >= 0.25 && num < 0.5) {
				String modelo = geraPalavra();
				double preco = Double.parseDouble(df.format(Math.random() * 100));
				double peso = Double.parseDouble(df.format(Math.random() * 100));
				boolean vemImpressora = false;
				if (Math.random() < 0.5)	{
					vemImpressora = true;
				}				
				produtos[i] = new Computador("Computador", 2, modelo, preco, peso, vemImpressora);
			} else if (num >= 0.5 && num < 0.75) {
				String modelo = geraPalavra();
				double preco = Double.parseDouble(df.format(Math.random() * 100));
				double peso = Double.parseDouble(df.format(Math.random() * 100));
				System.out.println(peso);
				double potencia = Double.parseDouble(df.format(Math.random() * 100));
				produtos[i] = new Som("Som", 3, modelo, preco, peso, potencia);
			} else {
				String modelo = geraPalavra();
				double preco = Double.parseDouble(df.format(Math.random() * 100));
				double peso = Double.parseDouble(df.format(Math.random() * 100));
				System.out.println(peso);
				boolean ehAltaResolucao = false;
				if (Math.random() < 0.5)	{
					ehAltaResolucao = true;
				}*/	
				produtos[i] = new Televisao("Televisao", 4, modelo, preco, peso, ehAltaResolucao);
				System.out.println(produtos);
			}
		}

		//VETOR DE PRODUTOS ESTÁ FEITO!!
		 
		int ano = 2000;
		int qntFuncionarios = 200;
		Loja loja = new Loja(ano, qntFuncionarios, produtos);
		
		// System.out.println(loja.precoMaisBarato());
		
		// ORDENAR VETOR PRECOS
		// System.out.println(loja.ordenaVetor(produtos[3]));
		System.out.println(produtos[3]);
	}

		
}