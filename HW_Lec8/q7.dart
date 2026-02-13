import "dart:io";

void main() {
  /*
  Q7
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.
 */
  print("Enter integers separated by spaces:");
  String? input = stdin.readLineSync();

  List<int> numbers = input!.split(' ').map((e) => int.parse(e)).toList();

  int largest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);

  int difference = largest - smallest;

  print("Largest number: $largest");
  print("Smallest number: $smallest");
  print("Difference: $difference");

  double average = numbers.reduce((a, b) => a + b) / numbers.length;

  print("Average: $average");

  print("Numbers above average:");
  for (int num in numbers) {
    if (num > average) {
      print(num);
    }
  }

  int evenCount = 0;
  int oddCount = 0;

  for (int num in numbers) {
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  print("Even numbers count: $evenCount");
  print("Odd numbers count: $oddCount");
}
