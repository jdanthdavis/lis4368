import java.io.*;
import java.util.Scanner;

public class FileWriteReadCount {

    public static void main (String [] args) throws Exception {

        System.out.println("Program captures user input, write to and reads from the same file, and counts number of words in file.");
        System.out.println();

        String myFile = "filecountwords.txt";

        try {
            File file = new File (myFile);

            PrintWriter writer = new PrintWriter (file);

            Scanner input = new Scanner (System.in);

            String str = "";

            System.out.print("Please enter text: ");
            str = input.nextLine();

            writer.write(str);

            System.out.println("Saved to file \"" + myFile + "\"");

            writer.close();

            Scanner read = new Scanner (new FileInputStream (file));
            int count = 0;
            
            while (read.hasNext()) {
                read.next();
                count++;
            }
            System.out.println("Number of words: " + count);
        }

        catch (IOException ex) {
            System.out.println("Error writing to file " + myFile + "");
        }
    }
}