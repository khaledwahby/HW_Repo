void main() {
  /*
Question 17
Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.
  */

  int price = 75;
  String currency = 'EGP';

  String priceStr = price.toString();
  String paddedPrice = priceStr.padLeft(4, '0');
  String priceTag = '$currency $paddedPrice';

  print('Price Tag: $priceTag');

  if (paddedPrice.length > priceStr.length) {
    print('Price was padded successfully');
  } else {
    print('No padding was applied');
  }
}
