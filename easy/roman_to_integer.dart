class Solution {
  static const alphabet = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int romanToInt(String s) {
    var res = 0;
    var prev = 0;
    var cur = 0;

    for (int i = 0; i < s.length; i++) {
      cur = alphabet[s[i]] ?? 0;
      if (cur > prev) {
        prev = cur - prev;
      } else if (cur == prev) {
        prev += cur;
      } else {
        res += prev;
        prev = cur;
      }
      // print("$prev prev, $cur cur, $res res");
    }
    res += prev;
    return res;
  }
}
