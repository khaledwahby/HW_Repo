void main() {
  /*
    Q2. Class with Constructor 
    - Create a class Car with attributes brand and year. 
    - Add a constructor to set the values when creating the object. 
    - In main(), create two car objects with different data and print their details.
  */

  Car car1 = Car("Hyundai Elentra", 2026);
  Car car2 = Car("Nissan Qashqai", 2026);
}

class Car {
  String? brand;
  num? year;

  Car(brand, year) {
    print("$brand $year");
  }
}
