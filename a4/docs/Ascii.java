import java.util.Scanner;

public class Ascii {

    public static void main (String [] args) {

        int num = 0;
        boolean isValidNum = false;
        Scanner sc = new Scanner (System.in);

        System.out.println("Printing characters A-Z as ASCII values: ");
            for (char character = 'A'; character <= 'Z'; character++) {
                System.out.printf("Character %c has ascii value %d\n", character, ((int)character));
            }

        System.out.println("\nPrinting ASCII values 48-122 as characters:");
            for (num = 48; num <= 122; num++) {
                System.out.printf("ASCII value %d has character value %c\n", num, ((char)num));
            }

        System.out.println("\nAllowing user ASCII value input:");
            while (isValidNum == false) {

                System.out.print("Please enter ASCII value (32 - 127): ");
                if (sc.hasNextInt()) {
                    num = sc.nextInt();
                    isValidNum = true;
                }
                else {
                    System.out.println("Invalid integer. ASCII value must be a number.\n");
                }
                sc.nextLine();

                if (isValidNum == true && num < 32 || num > 127) {
                    System.out.println("ASCII value must be >= 32 and <= 127.\n");
                    isValidNum = false;
                }
                if (isValidNum == true) {
                    System.out.println();
                    System.out.printf("ASCII value %d has character value %c\n", num, ((char)num));
                }

            }
    }
}