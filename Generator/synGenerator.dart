Iterable<int> range(int start, int end) sync* {
  for (int i = start; i < end; i++) {
    yield i;
  }
}

void main(List<String> args) {
  var nums = range(1, 10);
  var nums1 = nums.iterator;
  print(nums);
  var numbers = [...nums];
  print(nums);

  for (var num in nums) {
    print(num);
  }

  while (nums1.moveNext()) {
    print(nums1.current);
  }
}
