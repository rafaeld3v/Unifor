package algoritmosFundamentais;
import java.util.Scanner;
public class Somatorio3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		
		System.out.println("Informe a quantidade de n�meros: ");
		double n = s.nextDouble();
		double numero;
		double soma = 0;
		
		for (int i = 0; i < n; i++) {
			System.out.println("Informe um n�mero: ");
			numero = s.nextDouble();
			soma = soma + numero;
		}
		
		System.out.println("A soma dos " + n + "n�meros � " + soma);
	}

}
