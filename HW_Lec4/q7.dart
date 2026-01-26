void main() {
  /*
  Q7
    Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together, and print the total.
  */

  List<int> scores = [10, 0, 20, 30];

  int total = 0;

  for (int i in scores) {
    if (i != 0) {
      total += i;
    }
  }

  print(total);
}
