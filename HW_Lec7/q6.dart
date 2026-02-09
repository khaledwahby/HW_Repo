void main() {
  /*
Q6 Create a class NumberCheck with an attribute value. 
Add a method isEven() that returns true if the number is even, false otherwise. 
In main(), test the method with one number.
  */

  NumberCheck Checker = NumberCheck();
  print(Checker.isEven(14));
}

class NumberCheck {
  num? value;

  bool isEven(num number) {
    if (number % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }
}
