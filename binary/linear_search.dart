int linearSearch(int target, List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> nums = [4, 2, 8, 1, 5, 7];
  int target = 8;

  int result = linearSearch(target, nums);

  if (result != -1) {
    print("Target $target found at index $result");
  } else {
    print("Target $target not found in the list");
  }
}
