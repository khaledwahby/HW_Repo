void main() {
  /*
  Q1 Create a class City with attributes name and population. 
  In main(), create two city objects and print their details.
 */
  City cairo = City();
  City tanta = City();

  cairo.name = "Cairo";
  cairo.population = 40000000;

  tanta.name = "Tanta";
  tanta.population = 20000000;

  print(
    "the city of ${cairo.name} with population count of ${cairo.population}",
  );

  print(
    "the city of ${tanta.name} with population count of ${tanta.population}",
  );
}

class City {
  String? name;
  num? population;
}
