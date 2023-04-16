class Solution {
  int lengthOfLongestSubstring(String s) {
    String input = s;
    Set<String> letters = {};

    int maxSubString = 0;
    for (int i = 0; i < input.length; i++) {
      while (letters.contains(input[i])) {
        letters.remove(letters.first);
      }
      letters.add(input[i]);
      if (letters.length > maxSubString) {
        maxSubString = letters.length;
      }
      // print(letters);
    }
    return maxSubString;
  }
}