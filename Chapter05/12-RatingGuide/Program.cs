
namespace RatingGuide;

class Program
{
    static void Main(string[] args)
    {
        int stars = default;
        int totalStars = default;
        int totalClients = default;
        double avgStars = default;
        int count = default;

        const int ATTEMPTS = 3;

        stars = ReadInteguer("Enter the number of stars between 0 and 4: ");

        while (stars >= 0)
        {
            if (stars > 4)
            {
                count++;
                if (count < ATTEMPTS)
                {
                    WriteLine("The number of stars must be between 0 and 4.");
                }
                else
                {
                    WriteLine("We can't continue, please get assistant for rate your movie. Press any key to continue...");
                    ReadKey();
                    count = 0;
                }
            }
            else
            {
                totalStars += stars;
                totalClients++;
            }

            stars = ReadInteguer("Enter the number of stars between 0 and 4: ");
        }

        if (totalClients > 0)
        {
            avgStars = (double)totalStars / totalClients;
            WriteLine($"The average number of stars is {avgStars:N}.");
        }
        else
        {
            WriteLine("No clients rated.");
        }

        WriteLine("Program finished. Press any key to exit...");
        ReadKey();
    }

    private static int ReadInteguer(string message)
    {
        int number = default;

        Write(message);

        while (!int.TryParse(ReadLine(), out number))
        {
            WriteLine($"Invalid input. {message}");
        }

        return number;
    }
}
