void main() {
  /*
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is greater than or equal to 40.
 */

  List<int?> nullableList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  bool isListNull = nullableList == null || nullableList.isEmpty;
  if (isListNull) {
    print("No scores");
  } else {
    int sum = nullableList[0]! + nullableList[nullableList.length - 1]!;
    bool graterThan40 = sum >= 40;
    print(
      "sum of the first and last elements is $sum and it is $graterThan40 grater than 40",
    );
  }
}
