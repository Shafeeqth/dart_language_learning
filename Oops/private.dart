class Person {
  // private fiels are library level rather than class Level
  String _name = "";
  int _age = 0;

  // short hand method of the same Person(name, age) => this.age = age ...;
  // Person([this._name = "Person", this._age = 18]);

  // using named  constructor -> with private fields
  Person({String name = "some", int age = 18})
      : _age = age,
        _name = name; // Initializer list (Named constructor)

  // named constructor
  Person.restore() {
    this._age = 0;
    this._name = "";
  }

  show() {
    print("Name: $_name Age: $_age");
  }
}

// void main(List<String> args) {
//   Person per1 = Person("Shafeeque", 24);
//   print(per1._age);
// }
