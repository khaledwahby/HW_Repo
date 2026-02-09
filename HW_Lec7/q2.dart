void main() {
  /*
Q2 Create a class Temperature with an attribute celsius. 
Add a method toFahrenheit() that returns the temperature in Fahrenheit. 
In main(), create an object and print the converted value.
  */

  Temperature converter = Temperature();
  print(converter.toFahrenheit(30));
}

class Temperature {
  num? celsius;

  num toFahrenheit(num celsius) {
    return (celsius * 9 / 5) + 32;
  }
}
