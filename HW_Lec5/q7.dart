import "dart:io";

void main() {
  /*
  Q7. Sentence Word Counter 
  - Ask the user for a short sentence. 
  - Print how many words it contains and how many characters (excluding spaces).
    */

  List<String> userWords = [];
  stdout.write("Please enter a short sentence");
  String userSentence = stdin.readLineSync()!;
  userWords = userSentence.split(" ");
  print(" number of words are ${userWords.length}");
  print("number of characters are ${userSentence.replaceAll(' ', '').length}");
}
