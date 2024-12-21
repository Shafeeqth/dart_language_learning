import 'dart:math';

abstract interface class Shape {
  double get area;

  
}

class Circle extends Shape {
  double _radius;

  Circle({required radius}) : _radius = radius;

  @override
  double get area => _radius * _radius * pi;
}

class Square extends Shape {
  double _length;

  Square({required double length}) : _length = length;

  @override
  double get area => 4 * _length;
}

class Regions<T extends Shape> {
  List<T> shapes;

  Regions({required this.shapes});

  double get totalArea {
    double total = 0;
    for (T shape in shapes) {
      total += shape.area;
    }
    return total;
  }
}

void main(List<String> args) {
  var region = Regions(shapes: [
    Square(length: 10.0),
    Circle(radius: 8.0),
    Square(length: 24.0),
    Circle(radius: 88.0)
  ]);

  print(region.totalArea);
}
