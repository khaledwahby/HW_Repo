void main() {
  /*
Question 20
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.
  */

  int age = 16;
  bool hasParent = true;
  String area = 'restricted';

  bool allowedAccess = age >= 18 || hasParent;

  switch (area) {
    case 'general':
      if (allowedAccess) {
        print('Access granted to general area');
      } else {
        print('Access denied: under 18 without parent');
      }
    case 'restricted':
      if (age >= 18) {
        print('Access granted to restricted area');
      } else {
        print('Access denied: restricted area is 18+');
      }
    default:
      print('Invalid area');
  }
}
