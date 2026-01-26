void main() {
  /*
Q3
  Create a program with a price of 180 and a flag showing the person is a student. If the person is a
  student and the price is 150 or more, reduce the price by 15. Print the final price.
  */

  num price = 180;
  bool isStudent = true;
  num finalPrice;

  if (isStudent && price >= 150) {
    finalPrice = price * .85;
  } else if (isStudent && price < 150 || !isStudent) {
    finalPrice = price;
  }
}
