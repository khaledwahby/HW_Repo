void main() {
  /*
  Q8
Create a program with a setting called API_URL that is empty. If it is empty, replace it with
'https://example.com'. Print the new value in capital letters.


  */

  String? API_URL;

  print((API_URL ?? "https://example.com").toUpperCase());
}
