import java.util.Scanner;

class NumberSwap
{
    public static void main(String argsp[])
    {
        System.out.println("Program swaps to integers.");
        System.out.println();

        int num1, num2, temp;
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
            System.out.println("Please try again. Enter first number: ");
        }
        num2 = input.nextInt();

        System.out.println("\nBefore Swapping\nnum1 = "+num1+"\nnmum2 = "+num2);

        temp = num1;
        num1 = num2;
        num2 = temp;

        System.out.println("\nAfter Swapping\nnum1 = "+num1+"\nnmum2 = "+num2);
    }
}