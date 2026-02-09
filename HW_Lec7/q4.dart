void main() {
  /*
Q4 Create a class Employee with attributes name and salary. 
Add a method giveRaise(int amount) that increases the salary. 
In main(), create an employee, give them a raise, and print the new
salary.
  */

  Employee ahmed = Employee();
  ahmed.salary = 15000;
  ahmed.giveRaise(2000);
  print(ahmed.salary);
}

class Employee {
  String? name;
  num? salary;
  giveRaise(int amount) {
    this.salary = this.salary! + amount;
  }
}
