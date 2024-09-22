namespace SluggingPercentage;

class Program
{
    static void Main(string[] args)
    {
        double playerNumber, basesReached, turnAtBats, hits, walks, sacrificeFlies, sluggingPercentage, onBasePercentage;

        playerNumber = ReadDouble("Enter the player's number or 0 to finish: ");

        while (playerNumber != 0)
        {
            basesReached = ReadDouble("Enter the number of bases reached: ");
            turnAtBats = ReadDouble("Enter the number of turns at bat: ");
            hits = ReadDouble("Enter the number of hits: ");
            walks = ReadDouble("Enter the number of walks: ");
            sacrificeFlies = ReadDouble("Enter the number of sacrifice flies: ");

            sluggingPercentage = CalculateSluggingPercentage(basesReached, turnAtBats);
            onBasePercentage = CalculateOnBasePercentage(hits, walks, sacrificeFlies, turnAtBats);

            DisplayResults(playerNumber, basesReached, turnAtBats, sluggingPercentage, onBasePercentage);

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

    static double CalculateOnBasePercentage(double hits, double walks, double sacrificeFlies, double turnAtBats)
    {
        return (hits + walks) / (turnAtBats + walks + sacrificeFlies);
    }

    static void DisplayResults(double playerNumber, double basesReached, double turnAtBats, double sluggingPercentage, double onBasePercentage)
    {
        Console.WriteLine();
        Console.WriteLine("+---------------+---------------+--------------+---------------------+--------------------+");
        Console.WriteLine("| Player number | Bases reached | Turns at bat | Slugging percentage | On-base percentage |");
        Console.WriteLine("+---------------+---------------+--------------+---------------------+--------------------+");
        Console.WriteLine($"|{playerNumber,15}|{basesReached,15}|{turnAtBats,14}|{sluggingPercentage,21:P}|{onBasePercentage,20:P}|");
        Console.WriteLine("+---------------+---------------+--------------+---------------------+--------------------+");
        Console.WriteLine();
    }

    static void DisplayEndOfWork()
    {
        Console.WriteLine("Program finished.");
        Console.WriteLine("Press any key to exit.");
        Console.ReadKey();
    }
}
