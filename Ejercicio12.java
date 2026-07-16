import java.util.Scanner;

public class Ejercicio12 {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);

        int escaleraAsteriscos =0;
        int filasEscalera = 1;
        int numeroColumnasEscalera = 0;

        System.out.print("Ingresa un número: ");
        escaleraAsteriscos = entrada.nextInt();

        while (filasEscalera <= escaleraAsteriscos) {

            numeroColumnasEscalera = filasEscalera;

            while (numeroColumnasEscalera != 0) {

                System.out.print("*");
                numeroColumnasEscalera = numeroColumnasEscalera - 1;

            }

            System.out.println();
            filasEscalera = filasEscalera + 1;
        }

    }
}