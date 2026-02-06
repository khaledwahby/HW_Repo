void main() {
  /*
    Q1. Class with Method 
    - Create a class Calculator with two attributes: num1 and num2. 
    - Add a method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call the method.
  */

  Calculator calc = Calculator();
  calc.num1 = 5;
  calc.num2 = 6;
  calc.addNumbers();
}

class Calculator {
  num? num1;
  num? num2;

  addNumbers() {
    print("${num1! + num2!}");
  }
}
