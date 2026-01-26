void main() {
  /*
  Q13
    Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times each name appears. Print only the names that appear more than once.
  
  */

  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> namesMap = {};

  for (String name in names) {
    if (namesMap.containsKey(name)) {
      namesMap[name] = namesMap[name]! + 1;
    } else {
      namesMap[name] = 1;
    }
  }

  for (var e in namesMap.entries) {
    if (e.value > 1) {
      print(e.key + " Appears " + e.value.toString() + " times");
    }
  }
}
