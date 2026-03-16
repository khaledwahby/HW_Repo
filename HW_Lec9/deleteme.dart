void main() {
  Student AhmedKhaled = Student();

  AhmedKhaled.stdName = "dd";
  print(AhmedKhaled.stdName);

  SuperStdn khaled = SuperStdn();
  khaled.stdName = "abas";
  print(khaled.stdName);

  List<Student> std1 = [Student(), Student()];
  std1[0].stdName = "khaled";
  print(std1[0].stdName);
}

class Student {
  String? _stdName;
  int? stdGrade;

  set stdName(String stdName) {
    _stdName = stdName;
  }

  String get stdName => _stdName!;
}

class SuperStdn extends Student {
  String? _supStdName;

  void study() {
    print("studing");
  }
}
