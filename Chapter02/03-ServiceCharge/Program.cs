namespace ServiceCharge;

class Program
{
    static void Main(string[] args)
    {
        string customerName = default;
        double bathroomsCleaned = default;
        double roomsCleaned = default;
        double serviceCharge = default;
        const string CENTINEL_VALUE = "ZZZZ";

        customerName = ReadString("Enter customer name or ZZZZ to stop: ");

        while (customerName != CENTINEL_VALUE)
        {
            bathroomsCleaned = ReadDouble("Enter number of bathrooms cleaned: ");
            roomsCleaned = ReadDouble("Enter number of rooms cleaned: ");

            serviceCharge = CalculateCharge(bathroomsCleaned, roomsCleaned);

            Console.WriteLine($"Customer's name: {customerName} Service charge: {serviceCharge:C}");

            customerName = ReadString("Enter customer name or ZZZZ to stop: ");
        }

        Console.WriteLine("Program finished. Press any key to exit.");
        Console.ReadKey();
    }

    static string ReadString(string message)
    {
        Console.WriteLine(message);
        return Console.ReadLine();
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

    static double CalculateCharge(double bathrooms, double rooms)
    {
        const double SERVICE_CHARGE = 40.00;
        const double BATHROOM_CHARGE = 15.00;
        const double ROOM_CHARGE = 10.00;

        return SERVICE_CHARGE + (bathrooms * BATHROOM_CHARGE) + (rooms * ROOM_CHARGE);
    }
}
