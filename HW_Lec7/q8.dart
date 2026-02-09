import "dart:io";

void main() {
  /*
  Q8 Ask the user to input a sentence. 
  Print all the words that appear only once in the sentence. 
  Also print the total count of unique words.
  */

  stdout.write("Please Enter a Sentence  :  ");
  List<String> sentence = stdin.readLineSync()!.split(" ");
  Map<String, int> words = {};
  int uniqueWordsCounter = 0;

  for (String word in sentence) {
    words[word] = (words[word] ?? 0) + 1;
  }

  for (var e in words.entries) {
    if (e.value == 1) {
      print(" ${e.key} appeared once");
      uniqueWordsCounter = uniqueWordsCounter + 1;
    }
  }
  print("total count of unique words is  $uniqueWordsCounter");
}
