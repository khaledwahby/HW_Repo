import "dart:io";

void main() {
  /*
  Q3. Word Reversal & Vowel Count 
  - Take a word from the user. - Print the word reversed, and also
  count how many vowels it has.
    */

  //vowels are A, E, I, O, U, , Y

  String reversedWord = "";
  int vowelsCounter = 0;
  stdout.write("Please enter a word :  ");
  String userInput = stdin.readLineSync()!;

  for (int i = userInput.length - 1; i >= 0; i--) {
    reversedWord = reversedWord + userInput[i];
    bool isVowel =
        userInput[i].toLowerCase() == "a" ||
        userInput[i].toLowerCase() == "e" ||
        userInput[i].toLowerCase() == "i" ||
        userInput[i].toLowerCase() == "o" ||
        userInput[i].toLowerCase() == "u" ||
        userInput[i].toLowerCase() == "y";
    if (isVowel) vowelsCounter = vowelsCounter + 1;
  }

  print(
    "the word in reverse is :  $reversedWord and number of Vowels are : $vowelsCounter ",
  );
}
