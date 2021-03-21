import java.util.Scanner;

class LargestThreeNumbers
{
    public static void main(String argsp[])
    {
        System.out.println("Program swaps to integers.");
        System.out.println();

        int num1, num2, num3, temp;
        Scanner input = new Scanner(System.in);

        System.out.print("Please enter first number: ");
        while (!input.hasNextInt())
        {
            System.out.println("Not valid integer!\n");
            input.next();
            System.out.println("Please try again. Enter first number: ");
        }
        num1 = input.nextInt();

        System.out.print("\nPlease enter second number: ");
        while (!input.hasNextInt())
        {
            System.out.println("Not valid integer!\n");
            input.next();
            System.out.println("Please try again. Enter second number: ");
        }
        num2 = input.nextInt();

        System.out.print("\nPlease enter third number: ");
        while (!input.hasNextInt())
        {
            System.out.println("Not valid integer!\n");
            input.next();
            System.out.println("Please try again. Enter third number: ");
        }
        num3 = input.nextInt();

        if (num1 > num2 && num1 > num3)
        {
            System.out.println("First number is largest.");
            input.next();
        }
        else if (num2 > num1 && num2 > num3)
        {
            System.out.println("Second number is largest.");
        }
        else
        {
            System.out.println("Third number is largest.");
        }
    }
}