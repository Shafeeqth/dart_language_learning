import 'dart:math';

class Circle {
  int _radius = 0;

  Circle(int radius) {
    this.radius = radius;
  }

  // Setter method to validate and assign value to private field
  set radius(int radius) {
    if (radius > 0) {
      this._radius = radius;
    } else {
      print("radius should be greater than 0");
    }
    print("Setter called");
  }

  // Getter for retrieve private field
  int get radius {
    return this._radius;
  }

  // Computed proper
  get area => radius * radius * pi;
}
