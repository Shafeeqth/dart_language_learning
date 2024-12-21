void main(List<String> args) {
  greatWithName(String name) {
    return "hello $name";
  }

  print(greatWithName("Shafeeque"));
  var great = greatWithName("name");
  print(great);

  String greet(String title, [greet = "hello "]) {
    return "$greet $title";
  }

  print(greet("shafeeque"));

  // Named parameters

  String printName(String name, {String type = "admin", required int age}) {
    return "$type $name $age";
  }

  print(printName("Shafeeque", type: "user", age: 23));
}
