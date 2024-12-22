part of shapes;

class Square implements Shape {
  Square({required double length}) : _length = length;

  double get area => 4 * _length;

  final double _length;
}
