import java.util.Scanner;

public class Ejercicio7 {

    // Método para calcular el factorial
    public static int calculoFactorial(int numeroUsuario) {

        int resultadoFactorial = 1;
        int iterador = 1;

        if (numeroUsuario == 0 || numeroUsuario == 1) {
            resultadoFactorial = 1;
        } else {
            while (iterador <= numeroUsuario) {
                resultadoFactorial = resultadoFactorial * iterador;
                iterador= iterador + 1;
            }
        }

        return resultadoFactorial;
    }

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int n = 0;
        int r = 0;
        int permutacion = 0;
        int combinacion = 0;
        int numeroUsuario1 = 0;
        int numeroUsuario2 = 0;
        int resta = 0;

        boolean isPrimerNumero = true;
        boolean isSegundoNumero = true;
        boolean noEsValidoNumeros = true;

        while (noEsValidoNumeros) {

            while (isPrimerNumero) {
                System.out.print("Ingresa el primer número: ");
                numeroUsuario1 = entrada.nextInt();

                if (numeroUsuario1 < 0) {
                    System.out.println("Número inválido. Intente nuevamente.");
                } else {
                    isPrimerNumero = false;
                }
            }

            while (isSegundoNumero) {
                System.out.print("Ingresa el segundo número: ");
                numeroUsuario2 = entrada.nextInt();

                if (numeroUsuario2 < 0) {
                    System.out.println("Número inválido. Intente nuevamente.");
                } else {
                    isSegundoNumero = false;
                }
            }

            if (numeroUsuario1 >= numeroUsuario2) {
                noEsValidoNumeros = false;
            } else {
                isPrimerNumero = true;
                isSegundoNumero = true;
                System.out.println("El primer número debe ser mayor o igual que el segundo.");
            }
        }
        
        n = numeroUsuario1; //El primer número es n (el total de elementos).
        r = numeroUsuario2; //El segundo número es r (los elementos que quieres escoger).
        resta = n - r; //(n-r)

        permutacion = calculoFactorial(n) / calculoFactorial(resta); //Formula P(n,r) = n!/(n-r)!

        combinacion = calculoFactorial(n) /(calculoFactorial(r) * calculoFactorial(resta)); //Formula C(n,r) = n!/r!(n-r)!

        System.out.println("P(" + numeroUsuario1 + "," + numeroUsuario2 + ") = " + permutacion);
        System.out.println("C(" + numeroUsuario1 + "," + numeroUsuario2 + ") = " + combinacion);
    }
}