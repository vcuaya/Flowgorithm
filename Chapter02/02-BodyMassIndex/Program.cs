namespace BodyMassIndex;

class Program
{
    static void Main(string[] args)
    {
        double weight = default;
        double height = default;
        double weightKg = default;
        double heightM = default;
        double bmi = default;
        const double CENTINEL_WEIGHT = 0.0;

        weight = ReadDouble("Enter your weight in pounds: ");

        while (weight != CENTINEL_WEIGHT)
        {
            height = ReadDouble("Enter your height in inches: ");

            weightKg = weight * 0.453592;
            heightM = height * 0.0254;
            bmi = CalculateBMI(weightKg, heightM);

            Console.WriteLine($"The BMI value is {bmi:F2}");

            weight = ReadDouble("Enter your weight in pounds: ");
        }

        Console.WriteLine("Program finished. Press any key to exit.");
        Console.ReadKey();
    }

    static double ReadDouble(string message)
    {
        double result = default;
        Console.Write(message);
        while (!double.TryParse(Console.ReadLine(), out result))
        {
            Console.WriteLine("Invalid input. Please try again.");
            Console.Write(message);
        }
        return result;
    }

    static double CalculateBMI(double weight, double height)
    {
        return weight / Math.Pow(height, 2);
    }
}
