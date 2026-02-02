import "dart:io";

void main() {
  /*
  Q2. Odd Numbers in a Range 
  - Ask the user to input a number n. - Print all odd numbers between 1
    and n, and also print how many odd numbers were found.
    */
  int oddNumbersCounter = 0;
  stdout.write('Please enter a number : ');
  int userInput = int.parse(stdin.readLineSync()!);

  for (int i = 1; i < userInput; i++) {
    if (i % 2 != 0) {
      print(i);
      oddNumbersCounter = oddNumbersCounter + 1;
    }
  }

  print("Count of odd numbers between 1 and $userInput is $oddNumbersCounter");
}
