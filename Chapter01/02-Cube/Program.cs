using System;

namespace Cube;

class Program
{
    static void Main(string[] args)
    {
        // The program allows the user to input a value for an edge of a cube,
        // calculates the area of one side of the cube, the total surface area
        // of the cube, and the volume of the cube.

        double edge, sideArea, totalArea, volume;

        edge = ReadNumber("Enter the edge of the cube: ");
        sideArea = Math.Pow(edge, 2);
        totalArea = sideArea * 6;
        volume = Math.Pow(edge, 3);

        Console.WriteLine($"The area of one side of the cube is {sideArea}");
        Console.WriteLine($"The total surface area of the cube is {totalArea}");
        Console.WriteLine($"The volume of the cube is {volume}");
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
}
