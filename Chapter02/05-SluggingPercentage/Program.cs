namespace SluggingPercentage;

class Program
{
    static void Main(string[] args)
    {
        double playerNumber, basesReached, turnAtBats, hits, walks, sacrificeFlies, sluggingPercentage, onBasePercentage, grossProductionAverage;

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
            grossProductionAverage = CalculateGrossProductionAverage(sluggingPercentage, onBasePercentage);

            DisplayResults(playerNumber, basesReached, turnAtBats, hits, walks, sacrificeFlies, sluggingPercentage, onBasePercentage, grossProductionAverage);

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

    static double CalculateGrossProductionAverage(double sluggingPercentage, double onBasePercentage)
    {
        return ((onBasePercentage * 1.8) + sluggingPercentage) / 4;
    }

    static void DisplayResults(double playerNumber, double basesReached, double turnAtBats, double hits, double walks, double sacrificeFlies, double sluggingPercentage, double onBasePercentage, double grossProductionAverage)
    {
        Console.WriteLine();
        Console.WriteLine("+---------------+---------------+--------------+------+-------+-----------------+---------------------+--------------------+--------------------------+");
        Console.WriteLine("| Player Number | Bases Reached | Turns at Bat | Hits | Walks | Sacrifice Flies | Slugging Percentage | On-base Percentage | Gross Production Average |");
        Console.WriteLine("+---------------+---------------+--------------+------+-------+-----------------+---------------------+--------------------+--------------------------+");
        Console.WriteLine($"| {playerNumber,13} | {basesReached,13} | {turnAtBats,12} | {hits,4} | {walks,5} | {sacrificeFlies,15} | {sluggingPercentage,19:P2} | {onBasePercentage,18:P2} | {grossProductionAverage,24:P2} |");
        Console.WriteLine("+---------------+---------------+--------------+------+-------+-----------------+---------------------+--------------------+--------------------------+");
    }

    static void DisplayEndOfWork()
    {
        Console.WriteLine("Program finished.");
        Console.WriteLine("Press any key to exit.");
        Console.ReadKey();
    }
}
