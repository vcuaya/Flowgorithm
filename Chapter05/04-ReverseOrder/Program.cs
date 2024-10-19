namespace ReverseOrder;

class Program
{
    static void Main(string[] args)
    {
        for (int i = 25; i >= 0; i--)
        {
            if (i == 25)
            {
                Write(i);
            }
            else
            {
                Write(", " + i);
            }
        }
    }
}
