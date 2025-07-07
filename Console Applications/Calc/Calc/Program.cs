using System;

class Calc
{
    static void Main()
    {
        Console.Write("Enter first number: ");
        double a = Convert.ToDouble(Console.ReadLine());

        Console.Write("Enter operation (+, -, *, /) : ");
        string op = Console.ReadLine();

        Console.Write("Enter second number: ");
        double b = Convert.ToDouble(Console.ReadLine());

        if (op == "+")
            Console.WriteLine("Result: " + (a + b));

        else if (op == "-")
            Console.WriteLine("Result: " + (a - b));

        else if (op == "*")
            Console.WriteLine("Result: " + (a * b));

        else if (op == "/")
        {
            if (b != 0)
                Console.WriteLine("Result: " + (a / b));

            else
                Console.WriteLine("Cannot divide by zero!");
        }

        else
            Console.WriteLine("Invalid operation");

        Console.ReadKey();
    }
}
