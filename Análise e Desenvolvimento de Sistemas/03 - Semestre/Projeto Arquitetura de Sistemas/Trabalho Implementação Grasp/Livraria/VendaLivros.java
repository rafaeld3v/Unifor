package Livraria;

import java.util.ArrayList;

public class VendaLivros {
  private ArrayList<ListaLivros> itensDeVenda;
  private String data;

  public VendaLivros(String data) {
    this.itensDeVenda = new ArrayList<ListaLivros>();
    this.data = data;
  }

  public ArrayList<ListaLivros> getItensDeVenda() {
    return this.itensDeVenda;
  }

  public String getData() {
    return this.data;
  }

  // Responsável por gerar o total da venda - EXPERT
  public Double totalVenda() {
    Double total = 0.0;

    for(ListaLivros item : itensDeVenda) {
      total += item.getSubtotal();
    }

    return total;
  }

  // Responsável por criar item de venda - CREATOR
  public void criaItemDeVenda(Livros livro, Integer quantidade) {
    ListaLivros item = new ListaLivros(livro, quantidade);
    itensDeVenda.add(item);
  }
}