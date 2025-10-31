package Livraria;

public class RealizarVenda {

	  public static void main(String[] args) {
		  
	    Livros livro1 = new Livros("08921", "O Hobbit", 39.97);
	    Livros livro2 = new Livros("21343", "The Chronicles of Narnia 8-Book Box Set + Trivia Book", 344.31);
	    Livros livro3 = new Livros("97820", "League Of Legends: Reinos De Runeterra", 62.56);
	    Livros livro4 = new Livros("31232", "Liderança de produtos digitais", 69.90);

	    VendaLivros venda = new VendaLivros("23/02/2021");

	    venda.criaItemDeVenda(livro1, 1);
	    venda.criaItemDeVenda(livro2, 1);
	    venda.criaItemDeVenda(livro3, 2);
	    venda.criaItemDeVenda(livro4, 1);

	    System.out.println("Total da venda:");
	    System.out.println("R$"+venda.totalVenda());
	  }

}