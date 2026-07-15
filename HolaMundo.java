import java.util.Scanner;

public class HolaMundo {
	public static void sumar(){
		System.out.println(10);

	}
	public static void suma(int a, int b){
		System.out.println(a+b);
	}

	public static int resta(int a, int b){
		return a-b;
	}

	public static void main (String args[]){
		Scanner entrada = new Scanner(System.in);
		System.out.println("Ingresa un mensaje: ");
		String mensaje = entrada.nextLine();
		System.out.println("Ingresa un numero: ");
		int valor = entrada.nextInt();

		System.out.println("Hola Mundo");
		System.out.println("Segunda Linea");
		int x;
		String y;
		x=5;
		if(x<10){
			System.out.println("X es menor que 10");
		}else{
			if(x==10){
				System.out.println("X es igual a 10");
			}
		}
		while(x>0){
			System.out.println(x);
			x=x-1;
		}
		sumar();
		suma(4,8);
		System.out.println(resta(4,5));
	
	}
}

