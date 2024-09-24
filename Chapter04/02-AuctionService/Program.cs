namespace AuctionService;

class Program
{
    static void Main(string[] args)
    {
        int idNumber = default;
        int duration = default;
        decimal minBid = default;
        string description = default;
        const int SENTINEL = 0;

        idNumber = ReadInteger("Enter the auction ID number: ");
        while (idNumber != SENTINEL)
        {
            description = ReadString("Enter the auction description: ");
            duration = ReadInteger("Enter the auction duration in days: ");
            minBid = ReadDecimal("Enter the minimum bid: ");

            if (100 < minBid)
            {
                ShowAuction(idNumber, description, duration, minBid);
            }

            idNumber = ReadInteger("Enter the auction ID number: ");
        }

        Console.WriteLine("Program finished. Press any key to exit.");
        Console.ReadKey();
    }

    static int ReadInteger(string message)
    {
        int number = default;
        Console.WriteLine(message);
        while (!int.TryParse(Console.ReadLine(), out number))
        {
            Console.WriteLine($"Please enter a valid integer. {message}");
        }
        return number;
    }

    static decimal ReadDecimal(string message)
    {
        decimal number = default;
        Console.WriteLine(message);
        while (!decimal.TryParse(Console.ReadLine(), out number))
        {
            Console.WriteLine($"Please enter a valid decimal. {message}");
        }
        return number;
    }

    static string ReadString(string message)
    {
        Console.WriteLine(message);
        return Console.ReadLine();
    }

    static void ShowAuction(int id, string description, int duration, decimal minBid)
    {
        Console.WriteLine("+--------+---------------------------+----------+-------------+");
        Console.WriteLine("|   ID   |        Description        | Duration | Minimum Bid |");
        Console.WriteLine("+--------+---------------------------+----------+-------------+");
        Console.WriteLine($"| {id,6} | {description,-25} | {duration,8} | {minBid,11:C} |");
        Console.WriteLine("+--------+---------------------------+----------+-------------+");
    }
}
