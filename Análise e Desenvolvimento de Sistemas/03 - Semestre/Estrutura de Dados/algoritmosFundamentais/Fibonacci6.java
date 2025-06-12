package algoritmosFundamentais;
import java.util.Scanner;

public class Fibonacci6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner s = new Scanner(System.in);
		
		System.out.println("Informe o número de termos da sequência: ");
		int n = s.nextInt();
		
		int termo1 = 0;
		int termo2 = 1;
		int termo3;
		
		System.out.print(termo1 + ", " + termo2);
		
		for (int i = 3; i <= n; i++) {
			termo3 = termo1 + termo2;
			System.out.print(", " + termo3);
			termo1 = termo2;
			termo2 = termo3;
		}
	}

}
