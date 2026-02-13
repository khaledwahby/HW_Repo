void main() {
  /*
  Q2
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).
 */

  Car carA = Car();
  carA.brand = "Hyundai";
  carA.year = 2026;

  Car carB = Car();
  carB.brand = "";
  carB.year = 1840;

  print("${carA.brand} - ${carA.year}");
  print("${carB.brand} - ${carB.year}");
}

class Car {
  String? _brand;
  int? _year;

  set brand(String brand) {
    if (brand != "") {
      this._brand = brand;
    } else {
      print("Incorrect brand name");
    }
  }

  set year(int year) {
    if (year >= 1886) {
      this._year = year;
    } else {
      print("Incorrect year");
    }
  }

  String get brand => _brand ?? "";
  int get year => _year ?? 0;
}
