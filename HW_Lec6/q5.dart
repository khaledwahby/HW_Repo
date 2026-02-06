import "dart:io";

void main() {
  /*
    Q5. Find Second Largest Number 
    - Ask the user to enter 6 numbers in a list. 
    - Print the largest number and the second largest number (without sorting the list).
  */
  List<num> numbers = [];
  num largestNum;
  num secondLargest;

  for (int i = 1; i < 7; i++) {
    stdout.write("please entr a number");
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  print(numbers);
  largestNum = numbers[0];
  secondLargest = numbers[0];
  for (num e in numbers) {
    if (e > largestNum) {
      largestNum = e;
    }
  }

  for (num e in numbers) {
    if (e > secondLargest && e < largestNum) {
      secondLargest = e;
    }
  }

  print(
    "the largest number is $largestNum  and the second largest is $secondLargest ",
  );
}
