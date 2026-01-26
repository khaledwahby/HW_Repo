void main() {
  /*
Q6
  Create a program that calculates the factorial of 6 and prints the result.
  */
  int factorial = 1;

  for (int i = 6; i > 0; i--) {
    factorial = factorial * i;
  }

  print(factorial);
}
