namespace SluggingPercentage;

class Program
{
    static void Main(string[] args)
    {
        double playerNumber, basesReached, turnAtBats, sluggingPercentage;

        playerNumber = ReadDouble("Enter the player's number or 0 to finish: ");

        while (playerNumber != 0)
        {
            basesReached = ReadDouble("Enter the number of bases reached: ");
            turnAtBats = ReadDouble("Enter the number of turns at bat: ");

            sluggingPercentage = CalculateSluggingPercentage(basesReached, turnAtBats);

            DisplayResults(playerNumber, basesReached, turnAtBats, sluggingPercentage);

            playerNumber = ReadDouble("Enter the player's number or 0 to finish: ");
        }

        DisplayEndOfWork();
    }

    static double ReadDouble(string message)
    {
        double number;
        Console.WriteLine(message);
        while (!double.TryParse(Console.ReadLine(), out number))
        {
            Console.Write($"Invalid input. {message}");
        }
        return number;
    }

    static double CalculateSluggingPercentage(double basesReached, double turnAtBats)
    {
        return basesReached / turnAtBats;
    }

    static void DisplayResults(double playerNumber, double basesReached, double turnAtBats, double sluggingPercentage)
    {
        Console.WriteLine();
        Console.WriteLine("| Player number | Bases reached | Turns at bat | Slugging percentage |");
        Console.WriteLine("| ------------- | ------------- | ------------ | ------------------- |");
        Console.WriteLine($"|{playerNumber,14} |{basesReached,14} |{turnAtBats,13} |{sluggingPercentage,20:P} |");
        Console.WriteLine();
    }

    static void DisplayEndOfWork()
    {
        Console.WriteLine("Program finished.");
        Console.WriteLine("Press any key to exit.");
        Console.ReadKey();
    }
}
