Stream<int> range(int start, int end) async* {
  for (int i = start; i < end; i++) {
    await Future.delayed(Duration(seconds: 1), () {});
    yield await i;
  }
}

Future<void> main(List<String> args) async {
  var nums = range(1, 15);

  nums.listen((data) => print(data)); 

  // await for (var num in nums) {
  //   print(num);
  // }
}
