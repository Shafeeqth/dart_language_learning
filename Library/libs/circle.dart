part of shapes;

class Circle implements Shape {
  final double _radius;

  Circle({required double radius}) : _radius = radius;

  double  get area => _radius * _radius * math.pi;
}
