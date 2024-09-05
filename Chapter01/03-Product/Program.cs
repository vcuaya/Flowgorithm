/*
* Representar la lógica de un programa que permite al usuario introducir
* dos valores. El programa da salida al producto de ambos valores.
*
* Represent the logic of a program that allows the user to input two values.
* The program outputs the product of both values.
*/

namespace Product;

class Program
{
    static void Main(string[] args)
    {
        double numberA, numberB, result;

        numberA = ReadNumber("Enter the first number: ");
        numberB = ReadNumber("Enter the second number: ");
        result = Product(numberA, numberB);

        Console.WriteLine($"The product of {numberA} and {numberB} is {result}");
        Console.WriteLine("Press any key to exit...");
    }

    static double ReadNumber(string message)
    {
        double userInput;

        Console.Write(message);

        while (!double.TryParse(Console.ReadLine(), out userInput))
        {
            Console.WriteLine("Invalid input. Please try again.");
        }

        return userInput;
    }

    static double Product(double numberA, double numberB)
    {
        return numberA * numberB;
    }
}
