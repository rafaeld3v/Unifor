package algoritmosFundamentais;

import java.util.Scanner;
import java.lang.Math;

public class Base8 {

	public static void main(String[] args) {
		
		Scanner s = new Scanner(System.in);
		
		System.out.println("Informe um n�mero inteiro decimal:");
		int q = s.nextInt();
		System.out.println("N�mero " + q + " na base bin�ria: ");
		
		int r[];
		r = new int[100];
		int i = 0;

		while (q > 0) {
			r[i] = q % 2;
			i++;
			q = q / 2;
		}

		while (i > 0) {
			i--;
			System.out.print(r[i]);
		}
		
	}
}