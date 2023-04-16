class Solution {
  int pow(int base, int power){
    var result=base;
    for (var i = 0; i<power-1;i++){
      result*=base;
    }
    return result;
  }

  bool isPalindrome(int x) {
    int length = x.toString().length;
    var pal = true;
    if (x < 0) {
      return false;
    }
    for (var i = 0; i < length ~/ 2; i++) {
      if (x % pow(10, length - i) ~/ pow(10, length - i - 1) !=
          (x % pow(10, i + 1)) ~/ pow(10, i)) {
        pal = false;
      }
    }
    return pal;
  }

}
