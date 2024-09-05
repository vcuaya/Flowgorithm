/*
* a) Representar la lógica de un programa que permita al usuario introducir
* valores para el ancho y el largo de una pared en metros. El programa
* da salida al área de la pared en metros cuadrados.
*
* b) Modifique el programa para permitir al usuario introducir el precio de
* un galón de pintura. Suponga que un galón de pintura cubre 35 metros cuadrados
* de una pared. El programa da salida al número de galones necesarios y el costo
* del trabajo. (Para este ejercicio suponga que no necesita tomar en cuenta las
* ventanas o puertas y que puede comprar galones de pintura completos.).
*
* a) Represent the logic of a program that allows the user to enter
* values for the width and length of a wall in meters. The program
* outputs the area of the wall in square meters.
*
* b) Modify the program to allow the user to enter the price of
* a gallon of paint. Assume that a gallon of paint covers 35 square meters
* of a wall. The program outputs the number of gallons needed and the cost
* of the work. (For this exercise assume that you do not need to take into account the
* windows or doors and that you can buy complete gallons of paint.).
*/

using System;

namespace WallArea;

class Program
{
    static void Main(string[] args)
    {
        double width, length, area, price, gallons, totalCost;
        const double GALLON_COVERAGE = 35;

        width = ReadNumber("Enter the width of the wall in meters: ");
        length = ReadNumber("Enter the length of the wall in meters: ");
        area = CalculateArea(width, length);

        Console.WriteLine($"The area of the wall is {area:N2} square meters.");

        price = ReadNumber("Enter the price of a gallon of paint: ");
        gallons = CalculateGallons(area, GALLON_COVERAGE);
        totalCost = CalculateCost(gallons, price);

        Console.WriteLine($"You will need {gallons:N2} gallons of paint.");
        Console.WriteLine($"The total cost of the work is {totalCost:C2}.");
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

    static double CalculateGallons(double area, double gallonCoverage)
    {
        return Math.Ceiling(area / gallonCoverage); // Round up to the nearest whole number
    }

    static double CalculateCost(double gallons, double price)
    {
        return gallons * price;
    }
}
