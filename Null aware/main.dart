void main(List<String> args) {
  String? name; // null safety operator -> can be null or String

  // Null aware operator

// -> null aware if-null operator (??)
  print(name ?? 'Guest User'); // if name is null then print 'Guest User'

// -> null aware if-null assignment operator (??=)
  String? name2;
  name2 ??= 'Guest User'; // if name2 is null then assign 'Guest User'
  print(name2);

// -> null aware access operator (?.)
  String? name3;
  print(name3?.length); // if name3 is null then return null

// -> null aware cascade operator (?..)
  String? name4;
  name4
  ?..length; // if name4 is null then return null
  print(name4);

// -> null aware index operator (?[])
  List<int>? list;
  print(list?[0]); // if list is null then return null

// -> null aware assertion  (!)
  String? name5 = 'John';
  print(name5.toUpperCase()); // if name5 is null then throw an exception



}
