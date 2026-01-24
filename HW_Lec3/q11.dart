void main() {
  /*
Question 11
Write a Dart program that applies discounts to a price. Use nested if/else to apply different discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
  */

  String user = "student";
  bool hasCoupon = true;
  bool aboveThreshold = false;
  num finalPrice = 0;
  num price = 2500;

  if (user == "student") {
    if (hasCoupon) {
      if (aboveThreshold) {
        finalPrice = price;
      } else {
        finalPrice =
            price * 0.8; // 20% discount in case of student and has a coupon .
      }
    } else {
      finalPrice =
          price * 0.9; // 10% discount in case of student without a coupon .
    }
  } else {
    finalPrice = price; // 0% discount in case not a student
  }

  print(" final Price = $finalPrice");
}
