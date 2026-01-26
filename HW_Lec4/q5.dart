void main() {
  /*
  Q5
    Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.
  */

  String text = "EGP 12.50";

  print(double.parse(text.substring(3, 8)));
}
