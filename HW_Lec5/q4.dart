import "dart:io";

void main() {
  /*
  Q4. Simple List Analyzer 
  - Let the user enter 5 numbers into a list. 
  - Print the largest and smallest numbers, and then calculate the difference between them.
    */

  List userInputsList = [];
  for (int i = 1; i < 6; i++) {
    stdout.write("please enter a number ");
    int userInput = int.parse(stdin.readLineSync()!);
    userInputsList.add(userInput);
  }
  int minNum = userInputsList[0];
  int maxNum = userInputsList[0];

  for (var n in userInputsList) {
    if (n < minNum) minNum = n;
    if (n > maxNum) maxNum = n;
  }

  print("Smallest number is : $minNum");
  print("Largest number is : $maxNum");
  print("defrance = ${maxNum - minNum} ");
}
