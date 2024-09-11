namespace CarTrip;

class Program
{
    static void Main(string[] args)
    {
        const double FUEL_EFFICIENCY = 8;
        const double PRICE_INCREASE = 1.10;
        double kilometers, costGas, costTrip, costTripIncrease;

        kilometers = ReadDouble("Enter the number of kilometers or type 0 to exit: ");

        while (kilometers != 0)
        {
            costGas = ReadDouble("Enter the cost of gas per liter: ");
            costTrip = (kilometers / FUEL_EFFICIENCY) * costGas;
            costTripIncrease = costTrip * PRICE_INCREASE;

            Console.WriteLine($"The cost of the trip is {costTrip:C2}");
            Console.WriteLine($"The cost of the trip with a 10% increase is {costTripIncrease:C2}");

            kilometers = ReadDouble("Enter the number of kilometers or type 0 to exit: ");
        }

        Finish();
    }

    static double ReadDouble(string message)
    {
        double number;
        Console.WriteLine(message);
        while (!double.TryParse(Console.ReadLine(), out number))
        {
            Console.WriteLine("Invalid input. Try again.");
            Console.Write(message);
        }
        return number;
    }

    static void Finish()
    {
        Console.WriteLine("Program finished.");
        Console.WriteLine("Press any key to exit.");
        Console.ReadKey();
    }
}