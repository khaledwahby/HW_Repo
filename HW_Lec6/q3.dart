void main() {
  /*
  Q3. Modify Attributes 
  - Create a class Person with attributes name and age. 
  - Create an object and set its initial values using a constructor. 
  - Then change the age of the object and print the updated details.
  */

  Person pers1 = Person("khaled", 52);
  pers1.age = 55;
  print(pers1.age);
  print(pers1.name);
}

class Person {
  String? name;
  num? age;

  Person(this.name, this.age) {}
}
