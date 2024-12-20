﻿namespace SharedTransportation;

class Program
{
    static void Main(string[] args)
    {
        string name = default;
        string city = default;

        const string SENTINEL = "exit";

        name = ReadString($"Enter the name of the employee or {SENTINEL} to finish: ");

        while (name.ToLower().Trim() != SENTINEL)
        {
            city = ReadString("Enter the city of residence: ");

            if (city.ToLower().Trim() == "woodstock" || city.ToLower().Trim() == "wonderland lake")
            {
                WriteLine($"The employee {name} lives in {city} and IS eligible for shared transportation.");
            }
            else
            {
                WriteLine($"The employee {name} lives in {city} and IS NOT eligible for shared transportation.");
            }

            name = ReadString($"Enter the name of the employee or {SENTINEL} to finish: ");
        }

        WriteLine("Program finished. Press any key to exit.");
        ReadKey();
    }

    static string ReadString(string message)
    {
        Write(message);
        return ReadLine();
    }
}
