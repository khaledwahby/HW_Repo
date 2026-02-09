void main() {
  /*
Q5 Create a class Course with attributes title and duration (default = 3 months). 
Create two courses: one with custom duration and one with the default. 
Print both.
  */

  Course dart = Course();
  dart.title = "Dart Programming";
  dart.duration = 4;
  print(dart.title);
  print(dart.duration);

  Course flutter = Course();
  flutter.title = "Flutter Programming";
  print(flutter.title);
  print(flutter.duration);
}

class Course {
  String? title;
  num duration = 3;
}
