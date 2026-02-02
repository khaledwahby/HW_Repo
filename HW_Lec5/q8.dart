import "dart:io";

void main() {
  /*
  Q8. Digits Operations 
  - Ask the user for a number (e.g., 528). 
  - Print the sum of its digits and also print the largest digit.
    */
  int sumOfDigits = 0;
  stdout.write("Please enter a number");
  List digits = stdin.readLineSync()!.split("");
  int largetDigit = int.parse(digits[0]);
  for (String digit in digits) {
    sumOfDigits += int.parse(digit);
    if (int.parse(digit) > largetDigit) largetDigit = int.parse(digit);
  }

  print("the sum of all digits is : $sumOfDigits");
  print("the largest Digit is :  $largetDigit");
}
