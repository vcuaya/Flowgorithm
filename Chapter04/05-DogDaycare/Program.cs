namespace DogDaycare;

class Program
{
    static void Main(string[] args)
    {
        int idNumber = default;
        string dogName = default;
        int dogAge = default;
        double dogWeight = default;
        decimal weeklyFee = default;

        const int SENTINEL = 999;

        idNumber = ReadPositiveInteger($"Enter the ID number of the owner or enter {SENTINEL} to finish: ");

        while (idNumber != SENTINEL)
        {
            dogName = ReadString("Enter the name of the dog: ");
            dogAge = ReadPositiveInteger("Enter the age of the dog: ");
            dogWeight = ReadPositiveDouble("Enter the weight of the dog: ");
            weeklyFee = CalculateWeeklyFee(dogWeight);

            if (weeklyFee > 100)
            {
                DisplayInvoice(idNumber, dogName, dogAge, dogWeight, weeklyFee);
            }

            idNumber = ReadPositiveInteger($"Enter the ID number of the owner or enter {SENTINEL} to finish: ");
        }

        WriteLine("Program finished. Press any key to exit.");
        ReadKey();
    }

    static int ReadPositiveInteger(string message)
    {
        int number = default;

        Write(message);

        while (true)
        {
            if (int.TryParse(ReadLine(), out number) && number > 0)
            {
                break;
            }

            Write($"Invalid input. {message}");
        }

        return number;
    }

    static string ReadString(string message)
    {
        Write(message);
        return ReadLine();
    }

    static double ReadPositiveDouble(string message)
    {
        double number = default;

        Write(message);

        while (true)
        {
            if (double.TryParse(ReadLine(), out number) && number > 0)
            {
                break;
            }

            Write($"Invalid input. {message}");
        }

        return number;
    }

    static decimal CalculateWeeklyFee(double dogWeight)
    {
        decimal weeklyFee = default;

        if (dogWeight < 7)
        {
            weeklyFee = 55m;
        }
        else if (dogWeight >= 7 && dogWeight <= 14)
        {
            weeklyFee = 75m;
        }
        else if (dogWeight > 14 && dogWeight <= 37)
        {
            weeklyFee = 105m;
        }
        else
        {
            weeklyFee = 125m;
        }

        return weeklyFee;
    }

    static void DisplayInvoice(int idNumber, string dogName, int dogAge, double dogWeight, decimal weeklyFee)
    {
        WriteLine();
        WriteLine("+----------+--------------------+---------+------------+");
        WriteLine("| Owner ID |      Dog name      | Dog age | Dog weight |");
        WriteLine("+----------+--------------------+---------+------------+");
        WriteLine($"| {idNumber,8} | {dogName,18} | {dogAge,7} | {dogWeight,10:N} |");
        WriteLine("+----------+--------------------+---------+------------+");
        WriteLine("+------------------------------------------------------+");
        WriteLine($"| Weekly Fee:{weeklyFee,41:C} |");
        WriteLine("+------------------------------------------------------+");
        WriteLine();
    }
}
