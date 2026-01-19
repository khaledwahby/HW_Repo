void main() {
  /*
  Exercise 2:
    a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
    b) Print a sentence that includes all values using string interpolation.
    c) Change weight to a different value and print only the updated one.
  */

  String country = "Egypt";
  int year = 1973;
  double weight = 85;
  bool likesCoding = true;

  print(
    "i live in $country, I born in $year, my weight is $weight KG and i $likesCoding like cooking",
  );
  weight = 86;
  print(weight);
}
