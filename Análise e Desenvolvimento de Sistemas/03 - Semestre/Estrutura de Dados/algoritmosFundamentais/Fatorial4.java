package algoritmosFundamentais;
import java.util.Scanner;
public class Fatorial4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		
		System.out.println("Informe um número: ");
		double n = s.nextDouble();
		double fatorial = 1;
		double i = n;
		
		while(i >= 1) {
			fatorial = fatorial * i;
			i = i - 1;
		}
		
		System.out.println("O fatorial de " + n + " é " + fatorial);
	
	}

}
