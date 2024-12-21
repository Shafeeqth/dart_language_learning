void main(List<String> args) {
  List<int> list = [1, 2, 3, 4, 5];
  list = [];

  final List<String> stringList = ["One", "Two", "Three"];
  const stringList2 = ["One", "Two", "Three"];
  stringList2.add('34');
  stringList.add("Four");
  stringList.remove("One");
  stringList.first;
  stringList.last;
  print(stringList.length);

  for (var num in stringList) {
    print(num);
  }

  stringList.forEach(print);
  bool flag = true;

  List<int> list2 = [if (flag) 1, 2, 3, 4, 5]; // Collection if 
  print(list2);

  List<int> list3 = [12, for (var i in list2) i * 2]; // Collection for
  print(list3);

  List<int> list4 = [...list2, ...list3]; // spread operator
  print(list4);
}
