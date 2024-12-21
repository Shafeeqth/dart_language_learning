class Animal {
  String name = "";
  String genus = "";

  Animal(this.name, this.genus);

  Animal.origin(String name, String genus) {
    this.name = name;
    this.genus = genus;
  }
}

class Dog {
  String name = "";
  String genus = "";

  Dog({required this.name, this.genus = "Some"});

  // call forwarding - redirecting
  Dog.something() : this(name: "Doberman");
}

void main(List<String> args) {
  var an = Animal.origin("Dog", "genus");

  print(an);

  print(an.genus);
  print(an.name);

  Dog dg = Dog.something();
  print(dg.genus);
  print(dg.name);
}
