namespace Profit;

class Program
{
    static void Main(string[] args)
    {
        double sellingPrice, purchasePrice, profit;

        sellingPrice = ReadDouble("Enter the selling price: ");
        purchasePrice = ReadDouble("Enter the purchase price: ");
        profit = sellingPrice - purchasePrice;

        Console.WriteLine($"The profit is {profit:C}");
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
