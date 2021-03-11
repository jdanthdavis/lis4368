//lis4368 ss10 - countCharacters
import java.util.Scanner;

public class countCharacters {

    public static void main (String [] args ) {
        
        Scanner scan = new Scanner (System.in);

        System.out.print("Please enter string: ");
        String lamp = scan.nextLine();
        counting(lamp);

    }

    public static void counting (String c) {
        char[] ch = c.toCharArray();
        int letter = 0;
        int space = 0;
        int num = 0;
        int other = 0;
        int upperCase = 0;
        int lowerCase = 0;

        for (int i = 0; i < c.length(); i++){
            if (Character.isLetter(ch[i])){
                letter++;
            }
                else if (Character.isDigit(ch[i])){
                    num++;
                }
                    else if (Character.isSpaceChar(ch[i])){
                        space++;
                    }
                        else {
                            other++;
                        };

            if (Character.isUpperCase(ch[i])){
                upperCase++;
            }
                else if (Character.isLowerCase(ch[i])){
                    lowerCase++;
                }
}

        System.out.println("String is: " + c);
        System.out.println("Letter(s): " + letter);
        System.out.println("Uppercase: " + upperCase);
        System.out.println("Lowercase: " + lowerCase);
        System.out.println("Space(s): " + space);
        System.out.println("Numbers(s): " + num);
        System.out.println("Other Character(s) " + other);

    }
}