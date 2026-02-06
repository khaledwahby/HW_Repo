void main() {
  /*
    Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
  */
  List<num> values = [1, 2, 4, 6, 8, 5];
  Set<num> uniqeValues = values.toSet();
  print(!(values.length == uniqeValues.length));
}
