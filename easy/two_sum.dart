class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var result;
    for (var i = 0; i < nums.length; i++) {
      if (nums.contains(target - nums[i])) {
        result = [i, nums.indexOf(target - nums[i])];
        if (result[0] != result[1]) {
          break;
        }
      }
    }
    return result;
  }
}
