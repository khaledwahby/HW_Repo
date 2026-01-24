void main() {
  /*
Question 9
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique count with the original list length and print a message if duplicates were removed.
  */

  List<int> number1 = [1, 1, 2, 3, 4, 4, 5, 6, 7, 7, 7];
  Set<int> number2 = number1.toSet();

  bool dupRemoved = number1.length > number2.length;

  if (dupRemoved) {
    print("duplicates are removed.");
  }
}
