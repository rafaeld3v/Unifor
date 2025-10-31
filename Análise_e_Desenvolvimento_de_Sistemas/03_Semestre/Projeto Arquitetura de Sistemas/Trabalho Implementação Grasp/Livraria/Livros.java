package Livraria;

public class Livros {

	  private String id;
	  private String titulo;
	  private Double preco;


	  public Livros(String id, String titulo, Double preco) {
	    this.id = id;
	    this.titulo = titulo;
	    this.preco = preco;
	  }

	  public String getId() {
	    return this.id;
	  }

	  public String getTitulo() {
	    return this.titulo;
	  }

	  public Double getPreco() {
	    return this.preco;
	  }
	}