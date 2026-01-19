void main() {
  /*
  Exercise 6:
    a) Create List animals with three values.
    b) Add a new animal, remove the last one, and update the second element.
    c) Print animals.first, animals.last, and animals.length.

  */

  List<String> animals = ["Dog", "Cat", "Lion"];

  animals.add("horse");
  animals.removeLast();
  animals[1] = "bear";

  print(animals.first);
  print(animals.last);
  print(animals.length);
}
