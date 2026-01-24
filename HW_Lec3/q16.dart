void main() {
  /*
Question 16
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
  */

  int x = 8;
  int y = 16;
  int z = 32;

  bool comparison1 = x > y * z;
  bool comparison2 = y / z < x;

  bool logical1 = x == y && y > z || z == y;
  bool logical2 = x > y || x > z;

  print("comparison1 is  $comparison1");
  print("comparison1 is  $comparison2");
  print("logical1 is  $logical1");
  print("logical2 is  $logical2");

  if (logical1) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
