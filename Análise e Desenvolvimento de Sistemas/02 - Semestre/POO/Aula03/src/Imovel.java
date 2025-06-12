
public class Imovel {

	public int tipo;
	public String proprietario;
	public double tamanho;
	public boolean areaNobre;
	public int idade;
	public double valorCompra;
	
	public double calculaIPTU()	{	
		double iptu = 0.0;
		if (tipo == 2 && tamanho > 100)	{
			iptu = 0.05 * valorCompra;
		}
		if (tipo == 2 && tamanho <= 100)	{
			iptu = 0.02 * valorCompra;
		}
		if (tipo == 1 && tamanho > 100)	{
			iptu = 0.03 * valorCompra;
		}
		if (tipo == 1 && tamanho <= 100)	{
			iptu = 0.01 * valorCompra;
		}	
		return iptu;
	}
	
	public double calculaPrecoVenda()	{
		double venda = 0.0;
		if (areaNobre == true && tamanho > 100)	{
			venda = 0.80 * valorCompra;
		}
		if (areaNobre == true && tamanho <= 100)	{
			venda = 0.81 * valorCompra;
		}
		if (areaNobre == false && tamanho > 100)	{
			venda = 0.82 * valorCompra;
		}
		if (areaNobre == false && tamanho <= 100)	{
			venda = 0.80 * valorCompra;
		}
		return venda;
	}
	
	public void mostraAtributos()	{
		System.out.println("Tipo: " + tipo);
		System.out.println("Proprietário: " + proprietario);
		System.out.println("Tamanho: " + tamanho);
		System.out.println("Área nobre? " + areaNobre);
		System.out.println("Idade: " + idade);
		System.out.println("Valor da compra: " + valorCompra);
	}
	
	public void mostraIPTUePrecoVenda()	{
		double iptu = calculaIPTU();
		double venda = calculaPrecoVenda();
		System.out.println("IPTU: " + iptu);
		System.out.println("Preço de venda: " + venda);
	}
	
}
