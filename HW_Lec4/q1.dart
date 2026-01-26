void main() {
  /*
  Q1
    Create a program that removes duplicate numbers from the list [5, 3, 5, 7, 3, 9] and prints how many unique numbers remain.
  */

  List<int> dupNumbers = [5, 3, 5, 7, 3, 9];

  Set<int> uniNumbers = dupNumbers.toSet();
  int countOfUninumbers = uniNumbers.length;
  print("count of unique numbers is $countOfUninumbers");
}
