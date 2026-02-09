import "dart:io";

void main() {
  /*
Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
Print the final single-digit result. 
(Example: 9+8+7+5 = 29 ® 2+9 = 11 ® 1+1 = 2)

  */
  num total = 0;
  stdout.write("please enter a number : ");
  String singleDigitResult = stdin.readLineSync()!;

  if (singleDigitResult.length == 1) {
    print(" the final single-digit is : $singleDigitResult");
    exit(00);
  }

  String sumDigits(String numbers) {
    for (var c in numbers.split("")) {
      total = num.parse(c) + total;
    }
    return total.toString();
  }

  while (singleDigitResult.length > 1) {
    singleDigitResult = (sumDigits(singleDigitResult));
    total = 0;
  }
  print(singleDigitResult);
}
