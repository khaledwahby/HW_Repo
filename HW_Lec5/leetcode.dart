void main() {
  /*
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.
  */

  String str = "A man, a plan, a canal: Panama";

  String strAlphaNumOnly = str.toLowerCase().replaceAll(
    RegExp(r'[^a-zA-Z0-9]'),
    '',
  );

  if (strAlphaNumOnly == strAlphaNumOnly.split('').reversed.join()) {
    print("the string '$str' is palindrome ==>  $strAlphaNumOnly");
  } else {
    print("the string '$str' is NOT palindrome ==>  $strAlphaNumOnly");
  }
}
