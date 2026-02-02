import "dart:io";

void main() {
  /*
  Q1. Sum, Average & Compare 
  - Ask the user for three numbers. 
  - Print their sum and average. Then, check if the average is greater  than 50 or not.
    */
  List<int> userInputs = [];
  num inputSum = 0;
  for (int i = 1; i < 4; i++) {
    stdout.write("Please enter a number :  ");
    userInputs.add(int.parse(stdin.readLineSync()!));
  }

  for (int input in userInputs) {
    inputSum = inputSum + input;
  }
  num avg = inputSum / userInputs.length;
  print("the sum of the inputs is : $inputSum");
  print("the average is  : $avg");
  bool avgGreaterThan50 = avg > 50;
  print("average $avgGreaterThan50 greater than 50 ");
}
