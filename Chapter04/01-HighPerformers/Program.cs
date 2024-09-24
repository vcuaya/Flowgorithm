namespace HighPerformers;

class Program
{
    static void Main(string[] args)
    {
        int idVendedor = default;
        int polizasVendidas = default;

        idVendedor = ReadInt("Introduzca el número ID del vendedor (0 para salir): ");

        while (idVendedor != 0)
        {
            polizasVendidas = ReadInt("Introduzca el número de pólizas vendidas: ");

            if (25 < polizasVendidas)
            {
                HighPerformer(idVendedor, polizasVendidas);
            }

            idVendedor = ReadInt("Introduzca el número ID del vendedor (0 para salir): ");
        }

        Console.WriteLine("Programa finalizado. Pulse una tecla para salir.");
        Console.ReadKey();
    }

    static int ReadInt(string message)
    {
        int number = default;

        Console.WriteLine(message);

        while (!int.TryParse(Console.ReadLine(), out number))
        {
            Console.WriteLine("Por favor, introduzca un número entero válido.");
            Console.WriteLine(message);
        }

        return number;
    }

    static void HighPerformer(int id, int polizas)
    {
        Console.WriteLine($"El vendedor {id} ha vendido {polizas} pólizas.");
    }
}
