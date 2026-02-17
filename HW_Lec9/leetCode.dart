void main() {
  /*
Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

You must implement a solution with a linear runtime complexity and use only constant extra space.
*/

  List<int> nums = [4, 1, 2, 1, 2];
  Map<int, int> numsCount = {};

  for (int num in nums) {
    numsCount[num] = (numsCount[num] ?? 0) + 1;
  }
  for (MapEntry e in numsCount.entries) {
    if (e.value == 1) {
      print("the single Value is : ${e.key}");
    }
  }
}
