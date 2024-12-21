void main(List<String> args) {
  int num1 = 0;
  String name = "String";
  print(name.isNotEmpty);

  for (var name in args) {
    print(name);
  }

  

  Outer: // labeling 
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 8; j++) {
      if (j == 2 * i - 1) break Outer;
      print("$i $j");
    }
  }
}
