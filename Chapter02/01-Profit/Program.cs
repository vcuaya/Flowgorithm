namespace Profit;

class Program
{
    static void Main(string[] args)
    {
        double sellingPrice = default;
        double purchasePrice = default;
        double profit = default;
        double totalProfit = default;
        const double CENTINEL_PROFIT = 0.0;

        sellingPrice = ReadDouble("Enter the selling price: ");

        while (sellingPrice != CENTINEL_PROFIT)
        {
            purchasePrice = ReadDouble("Enter the purchase price: ");
            profit = sellingPrice - purchasePrice;
            totalProfit += profit;

            Console.WriteLine($"The profit is {profit:C}");
            
            sellingPrice = ReadDouble("Enter the selling price: ");
        }

        Console.WriteLine($"The total profit is {totalProfit:C}");
        Console.WriteLine("Press any key to exit...");
        Console.ReadKey();
    }

    static double ReadDouble(string message)
    {
        double value;
        Console.WriteLine(message);
        while (!double.TryParse(Console.ReadLine(), out value))
        {
            Console.WriteLine("Invalid input. Please try again.");
        }
        return value;
    }
}
