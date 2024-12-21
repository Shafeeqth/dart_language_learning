void main(List<String> args) {
  Set<int> set = {1, 2, 3, 4, 5};
  Set<int> set2 = {1, 2, 3, 4, 5};
  set.add(6);
  set.remove(1);
  print(set.first);
  print(set.last);
  print(set.length);
  print(set.contains(3));

  set.forEach(print);

  print(set.intersection(set2)); 
  print(set.union(set2)); 
  print(set.difference(set2)); 

  for (var num in set) {
    print(num);
  }
  for (var i = 0; i < set.length; i++) {
    print(set.elementAt(i));
  }
}
