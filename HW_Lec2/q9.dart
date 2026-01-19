void main() {
  /*
  Exercise 9:
    a) Create List> students with two items, each having name and grade.
    b) Print the grade of the second student using index and key.
    c) Add both grades and print the average grade as double.

  */

  List<Map<String, dynamic>> students = [
    {"name": "khaled", "grade": 3.5},
    {"name": "Ahmed", "grade": 3.8},
  ];

  print(students[1]["grade"]);

  num sum = students[0]["grade"] + students[1]["grade"];
  print(sum / 2);
}
