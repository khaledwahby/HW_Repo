import "dart:io";

void main() {
  /*
   Q4
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.
Examples:
- '()' ® Valid
- '()[]{}' ® Valid
- '(]' ® Invalid
- '([)]' ® Invalid
- '{[]}' ® Valid
*/
  String inputString = '(]';
  List<String> char = ['(', ')', '{', '}', '[', ']'];
  List<String> str = inputString.split("").toList();
  int lastOpenedIndex = -1;
  int firstClosedIndex = -1;

  bool? checkCharValidation(String openChar, String closeChar) {
    while (str.contains(openChar)) {
      lastOpenedIndex = str.lastIndexOf(openChar);
      firstClosedIndex = str.indexOf(closeChar, lastOpenedIndex);

      bool noOpenWithAClose = lastOpenedIndex == -1 && firstClosedIndex != -1;
      bool noCloseWithAnOpen = lastOpenedIndex != -1 && firstClosedIndex == -1;
      bool oddGap =
          ((firstClosedIndex - lastOpenedIndex) % 2 != 0) &&
          firstClosedIndex - lastOpenedIndex == 0;

      if (noOpenWithAClose || noCloseWithAnOpen || oddGap) {
        return false;
      } else {
        str.removeAt(lastOpenedIndex);
        str.removeAt(firstClosedIndex - 1);
      }
    }
    return true;
  }

  var result;
  for (int x = 0; x < 6; x += 2) {
    result = checkCharValidation(char[x], char[x + 1]);
    if (!result!) {
      print("string is invalid");
      exit(0);
    }
  }
  print("string is valid");
}
