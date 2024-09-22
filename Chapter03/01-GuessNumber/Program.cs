namespace GuessNumber;

class Program
{
    static void Main(string[] args)
    {
        int numberToGuess = new Random().Next(1, 101);
        int numberGuessed = default;
        string message = "Introduce un número entero entre 1 y 100 que creas correcto: ";

        numberGuessed = ReadInteger(message);

        while (numberGuessed != numberToGuess)
        {
            if (numberGuessed < numberToGuess)
            {
                Console.WriteLine("El número es demasiado bajo.");
            }
            else
            {
                Console.WriteLine("El número es demasiado alto.");
            }
            numberGuessed = ReadInteger(message);
        }

        Console.WriteLine("¡Felicidades has adivinado! El número era {0}.", numberToGuess);
        Console.WriteLine("Programa terminado. Presiona cualquier tecla para salir.");
        Console.ReadKey();
    }

    static int ReadInteger(string message)
    {
        int number = default;

        Console.WriteLine(message);

        while (!int.TryParse(Console.ReadLine(), out number))
        {
            Console.WriteLine($"El valor introducido no es un número entero. {message}");
        }

        return number;
    }
}
