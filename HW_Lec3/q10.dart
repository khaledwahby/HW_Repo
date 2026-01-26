import 'dart:math';

void main() {
  /*
Question 10
Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry 'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.
  */

  Map<String, String> countryCodes = {
    "EG": "Egypt",
    "BR": "Brasil",
    "CA": "Canada",
    "CN": "China",
  };

  print(countryCodes["EG"]);
  countryCodes["QA"] = "Qatar";
  print(countryCodes.length);

  bool joExists = countryCodes.containsKey("JO");

  if (!joExists) {
    print("Jordan missing");
  }

  //countryCodes.entries.map((e) => {print("hi")});
  countryCodes.entries.map((e) => print(e.key)).toList();
}
