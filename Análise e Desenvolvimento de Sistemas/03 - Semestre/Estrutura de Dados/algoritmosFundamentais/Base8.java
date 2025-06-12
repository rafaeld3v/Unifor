package algoritmosFundamentais;

import java.util.Scanner;
import java.lang.Math;

public class Base8 {

	public static void main(String[] args) {
		
		Scanner s = new Scanner(System.in);
		
		System.out.println("Informe um número inteiro decimal:");
		int q = s.nextInt();
		System.out.println("Número " + q + " na base binária: ");
		
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