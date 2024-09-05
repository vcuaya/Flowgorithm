/*
* Representar la lógica de un programa que permita al usuario
* introducir valores para el ancho y el largo del piso de un
* salón en metros. El programa da salida al área del piso en
* metros cuadrados.
*
* Represent the logic of a program that allows the user to
* enter values for the width and length of the floor of a
* room in meters. The program outputs the area of the floor
* in square meters.
*/

namespace FloorArea;

class Program
{
    static void Main(string[] args)
    {
        double width, length, area, tiles;
        const double TILE_AREA = 0.09;

        width = ReadNumber("Enter the width of the floor in meters: ");
        length = ReadNumber("Enter the length of the floor in meters: ");
        area = width * length;
        tiles = area / TILE_AREA;

        Console.WriteLine($"The area of the floor is {area} square meters.");
        Console.WriteLine($"You need {tiles:N2} tiles to cover the floor.");
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
}
