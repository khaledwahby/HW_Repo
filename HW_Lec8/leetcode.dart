void main() {
  /*
Given two strings s and t, return true if t is an anagram of s, and false otherwise.

Example 1:
Input: s = "anagram", t = "nagaram"
Output: true
Example 2:
Input: s = "rat", t = "car"
Output: false
Constraints
1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.
  */

  String s = "anagram";
  String t = "nagaram";

  List<String> listS = s.split("");
  List<String> listT = t.split("");
  listS.sort();
  listT.sort();
  s = listS.toString();
  t = listT.toString();

  print(s == t);
}
