void main() {
  /*
  Exercise 7:
    a) Start with List numbers = [4, 4, 5, 6, 6, 7].
    b) Convert it to a Set to remove duplicates and print it.
    c) Use add(), remove(), and contains() with the set, printing each result.
  */

  List<int> numbers = [4, 4, 5, 6, 6, 7];

  Set<int> numbers2 = numbers.toSet();

  numbers2.add(8);
  print(numbers2);
  numbers2.remove(4);
  print(numbers2);
  print(numbers2.contains(4));
}
