import "dart:io";

void main() {
  /*
  Q6. Sentence Analyzer 
  - Ask the user to input a sentence. 
  - Print how many words it contains. 
  - Then print the shortest word and the longest word from the sentence.
  */

  stdout.write("please enter a Sentence :  ");
  String sentance = stdin.readLineSync()!;

  List<String> words = sentance.split(" ");
  print("the sentance has ${words.length} words");

  Map<String, int> wordLength = {};

  for (String word in words) {
    wordLength[word] = word.length;
  }

  int shortestValue = wordLength.values.first;
  String shortestKey = wordLength.keys.first;
  int longestValue = wordLength.values.first;
  String longestKey = wordLength.keys.first;
  print(wordLength);

  for (var e in wordLength.entries) {
    if (e.value > longestValue) {
      longestValue = e.value;
      longestKey = e.key;
    }
  }

  print("The longest word is $longestKey with lenght of $longestValue");

  for (var e in wordLength.entries) {
    if (e.value < shortestValue) {
      shortestValue = e.value;
      shortestKey = e.key;
    }
  }

  print("The Shortest word is $shortestKey with lenght of $shortestValue");
}
