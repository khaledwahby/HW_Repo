void main() {
  /*
Question 12
Create a Dart program that safely reads a phone number from a map. If the phone number is null, print a default message. Then update the phone number and print its length.
  */

  Map<String, String?> phoneNumbers = {"khaled": null, "Ahmed": "0102256589"};

  if (phoneNumbers["khaled"] == null) {
    print("the Phone number is null");
    phoneNumbers["khaled"] = "01068587456";
    print(phoneNumbers["khaled"]!.length);
  }

  print(phoneNumbers["khaled"]);
}
