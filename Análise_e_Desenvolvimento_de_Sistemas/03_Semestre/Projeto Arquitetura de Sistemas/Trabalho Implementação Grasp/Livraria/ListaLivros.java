package Livraria;

public class ListaLivros {
    private Livros livro;
    private Integer quantidade;

    public ListaLivros(Livros livro, Integer quantidade) {
      this.livro = livro;
      this.quantidade = quantidade;
    }

    public Livros getLivros() {
      return this.livro;
    }

    public Integer getQuantidade() {
      return this.quantidade;
    }

    public Double getSubtotal() {
      return this.quantidade * this.livro.getPreco();
    }
  }