import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {
		
		//QUESTÃO 01
		/*Scanner s = new Scanner(System.in);
		
		Invoice inv = new Invoice();
		System.out.println("Digite o código do identificador.");
		inv.identificador = s.next();
		
		System.out.println("Digite a quantidade.");
		inv.quantidade = s.nextInt();
		if (inv.quantidade < 0)	{
			inv.quantidade = 0;
		}
		
		System.out.println("Digite o preço.");
		inv.preco = s.nextDouble();
		if (inv.preco < 0)	{
			inv.preco = 0;
		}
		

		System.out.println("Digite o valor de n.");
		int n = s.nextInt();
		
		Invoice[] vetInv = new Invoice[n];
		
		for (int i = 0; i < n; i++)	{	
			vetInv[i] = new Invoice();
			System.out.println("Digite o código do identificador.");
			vetInv[i].identificador = s.next();
					
			System.out.println("Digite a quantidade.");
			vetInv[i].quantidade = s.nextInt();
			if (vetInv[i].quantidade < 0)	{
				vetInv[i].quantidade = 0;
			}
						
			System.out.println("Digite o preço.");
			vetInv[i].preco = s.nextDouble();
			if (vetInv[i].preco < 0)	{
				vetInv[i].preco = 0;
			}		
		}
		
		for (int i = 0; i < n; i++)	{
			double valorFatura = vetInv[i].calculaFatura();
			vetInv[i].mostraAtributos();
		}*/
		
		
		//QUESTÃO 02
		/*Data data1 = new Data();
		data1.dia = scanner.nextInt();
		data1.mes = scanner.nextInt();
		data1.ano = scanner.nextInt();
		
		Data data2 = new Data();
		data2.dia = scanner.nextInt();
		data2.mes = scanner.nextInt();
		data2.ano = scanner.nextInt();
		
		if (data1.dia == data2.dia && data1.mes == data2.mes && data1.ano == data2.ano)	{
			System.out.println("os objetos são iguais!");
		}*/
		
		
		
		
		
		
		
		//QUESTÃO 04
		Scanner s = new Scanner(System.in);
		
		System.out.println("Digite a quantidade de imóveis que se deseja cadastrar.");
		int n = s.nextInt();
		
		Imovel[] imoveis = new Imovel[n];
		
		for (int i = 0; i < n; i++)	{
			imoveis[i] = new Imovel();
			System.out.println("Digite o tipo.");
			imoveis[i].tipo = s.nextInt();
			System.out.println("Digite o proprietário.");
			imoveis[i].proprietario = s.next();
			System.out.println("Digite o tamanho.");
			imoveis[i].tamanho = s.nextDouble();
			System.out.println("Digite true ou false para área nobre.");
			imoveis[i].areaNobre = s.nextBoolean();
			System.out.println("Digite a idade.");
			imoveis[i].idade = s.nextInt();
			System.out.println("Digite o valor da compra.");
			imoveis[i].valorCompra = s.nextDouble();
		}
		
		for (int i = 0; i < n; i++)	{
			imoveis[i].mostraIPTUePrecoVenda();
		}
		
		
		double maiorImovel = imoveis[0].tamanho;
		for (int i = 0; i < n; i++)	{
			if (imoveis[i].tamanho > maiorImovel)	{
				maiorImovel = imoveis[i].tamanho;
			}
		}
		System.out.println("O imóvel de maior tamanho tem " + maiorImovel + " metros quadrados");
		
		
		double menorImovel = imoveis[0].tamanho;
		for (int i = 0; i < n; i++)	{
			if (imoveis[i].tamanho < menorImovel)	{
				menorImovel = imoveis[i].tamanho;
			}
		}
		System.out.println("O imóvel de menor tamanho tem " + menorImovel + " metros quadrados");
		
		
		int cntAp = 0;
		int cntCasa = 0;
		for (int i = 0; i < n; i++)	{
			if (imoveis[i].tipo == 1)	{
				cntCasa++;
			} else {
				cntAp++;
			}
		}
		System.out.println(cntAp + " imóveis do tipo AP");
		System.out.println(cntCasa + " imóveis do tipo casa");

		
		
		
		
		
	}

}
