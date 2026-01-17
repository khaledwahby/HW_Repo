void main() {
  /*
  Question 5
    What is the difference between var and dynamic in Dart? Provide an example of each.
   
  */

  //var is a keyword not a data type when declaring a variable using var keyword without assigning a value the variable data type will be dynamic, and if you assigned a value while declaring the variable with var the variable data type will be the same of the assigned value data type. the variable data type cant be chenged once it is declare.

  var x; // the variable x data type will be dynamic
  var y = 10; //the variable x data type will be integer
  var z = "khaled"; //the variable x data type will be String
  z = 55; // is not allowed because z is a string variable

  //dynamic is a data type, it allows a variable to be assigned a deferent data type values while the program is running.

  dynamic a = "khaled"; // string data type value
  a = 15; // int data type value
  a = true; //boolean data type value
}
