import "dart:math";
import "dart:io";

void main() {
  /*
  Q6. Number Guessing (3 Tries) 
  - Generate a random number between 1 and 20. 
  - Let the user guess up to 3 times. If they fail, reveal the correct number.
    */
  var random = Random();
  int randNumber = random.nextInt(20) + 1;
  bool winFlag = false;
  for (int i = 1; i < 4; i++) {
    stdout.write("please enter your guess from 1 to 10 :   ");
    int userGuess = int.parse(stdin.readLineSync()!);
    if (userGuess == randNumber) {
      print("perfict you WIN ");
      winFlag = true;
      break;
    } else {
      print("your Guess is not correcr");
    }
  }

  if (!winFlag) print("sorry you lose, the correct number was $randNumber");
}
