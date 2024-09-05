/*
* a) Representar la lógica de un programa que permita al usuario introducir
* valores para el ancho y el largo de una pared en metros. El programa
* da salida al área de la pared en metros cuadrados.
*
* a) Represent the logic of a program that allows the user to enter
* values for the width and length of a wall in meters. The program
* outputs the area of the wall in square meters.
*/

namespace WallArea;

class Program
{
    static void Main(string[] args)
    {
        double width, length, area;

        width = ReadNumber("Enter the width of the wall in meters: ");
        length = ReadNumber("Enter the length of the wall in meters: ");
        area = CalculateArea(width, length);

        Console.WriteLine($"The area of the wall is {area} square meters.");
        Console.WriteLine("Press any key to exit...");
        Console.ReadKey();
    }

    static double ReadNumber(string message)
    {
        double number;
        Console.Write(message);
        while (!double.TryParse(Console.ReadLine(), out number))
        {
            Console.WriteLine("Invalid input. Try again.");
        }
        return number;
    }

    static double CalculateArea(double width, double length)
    {
        return width * length;
    }
}
