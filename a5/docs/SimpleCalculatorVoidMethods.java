import java.util.Scanner;

class SimpleCalculatorVoidMethods
{
    public static void main(String args[])
    {
        System.out.println("Program uses nonvalue-returning methods to add, subtract, multiply, divide, and power floating point numbers, rounded to two decimal places.");
        System.out.println("Note: Program checks for non-numeric values, and division by zero.");
        System.out.println();

        double num1 = 0.0, num2 = 0.0;
        String operation = "";
        Scanner input = new Scanner(System.in);

        System.out.println("Enter mathemtical operation (a=add, s=subtract, m=multiply, d=divide, p=power): ");
        operation = input.next().toLowerCase();

        while (!operation.equals("a") && !operation.equals("s") && !operation.equals("m") && !operation.equals("d") && !operation.equals("p"))
        {
            System.out.println("\nIncorrect operation. Please enter correct operation: ");
            operation = input.next();
        }

        System.out.println("\nPlease enter first number: ");
        while (!input.hasNextDouble())
        {
            System.out.println("NOt a valid number!\n");
            input.next();
            System.out.println("Please try again. Enter first number: ");
        }
        num1 = input.nextDouble();

        System.out.println("\nPlease enter second number: ");
        while (!input.hasNextDouble())
        {
            System.out.println("NOt a valid number!\n");
            input.next();
            System.out.println("Please try again. Enter second number: ");
        }
        num2 = input.nextDouble();

        System.out.println();

        if(operation.equals("a"))
        {
            Add(num1, num2);
        }
        else if(operation.equals("s"))
        {
            Subtract(num1, num2);
        }
        else if(operation.equals("m"))
        {
            Multiply(num1, num2);
        }
        else if(operation.equals("d"))
        {
            if (num2 == 0)
            {
                System.out.println("Cannot divide by zero!");
            }
            else
            {
                Divide(num1, num2);
            }
        }
        else if(operation.equals("p"))
        {
            Power(num1, num2);
        }
    }

    public static void Add(double n1, double n2)
    {
        System.out.println(n1 + " + " + n2 + " = ");
        System.out.printf("%.2f", (n1 + n2));
    }

    public static void Subtract(double n1, double n2)
    {
        System.out.println(n1 + " - " + n2 + " = ");
        System.out.printf("%.2f", (n1 - n2));
    }

    public static void Multiply(double n1, double n2)
    {
        System.out.println(n1 + " * " + n2 + " = ");
        System.out.printf("%.2f", (n1 * n2));
    }

    public static void Divide(double n1, double n2)
    {
        System.out.println(n1 + " / " + n2 + " = ");
        System.out.printf("%.2f", (n1 / n2));
    }

    public static void Power(double n1, double n2)
    {
        System.out.println(n1 + " to the power of " + n2 + " = ");
        System.out.printf("%.2f", (Math.pow(n1,n2)));
    }
}