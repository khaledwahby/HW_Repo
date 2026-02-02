import 'dart:io';

void main() {
  /*
  Q5. Multiplication Table with Sum 
  - Ask the user for a number. - Print its multiplication table up to    10, then calculate the sum of all results.
    */

  int sumOfResults = 0;
  int result = 0;
  stdout.write("please Enter the table number");
  int table = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    result = table * i;
    print(" $table  X  $i  =  $result");
    sumOfResults += result;
  }
  print(" sum of all results is : $sumOfResults");
}
