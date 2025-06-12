
public class Invoice {
	
	//ATRIBUTOS!
	String identificador;
	int quantidade;
	double preco;
	
	double calculaFatura()	{
		return quantidade * preco;
	}
	
	void mostraAtributos()	{
		System.out.println("Identificador: " + identificador);
		System.out.println("Quantidade: " + quantidade);
		System.out.println("Preço: " + preco);
	}
}
