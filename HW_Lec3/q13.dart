void main() {
  /*
Question 13
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch statement to print a message for each grade

  */

  num mark = 10;
  String? grade;

  if (mark >= 90) {
    grade = "A";
  } else if (mark >= 80 && mark <= 89) {
    grade = "B";
  } else if (mark >= 70 && mark <= 79) {
    grade = "C";
  } else if (mark >= 60 && mark <= 69) {
    grade = "D";
  }
  ;

  grade = grade ?? "";

  switch (grade) {
    case 'A':
      print("Excellent");
    case 'B':
      print("Very Good");
    case 'C':
      print("Good");
    case 'D':
      print("Weak");
    default:
      print("Fail");
  }
  ;
}
