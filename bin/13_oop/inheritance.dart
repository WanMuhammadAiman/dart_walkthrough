import 'dart:math';

abstract class Shape {
  String? color; // Declaring color parameter as nullable

  Shape([this.color]);
  void draw() => print('Painted in ${color ?? "Unknown"}'); // Handling null with the null-aware operator ?? 
  double get area; // This method is not defined yet here
}

class Circle extends Shape {
  double _radius;

  Circle(this._radius, {String? color}) : super(color ?? 'White'); // Handling null with the null-aware operator ??
  double get radius => _radius;
  set radius(double value) => _radius = value;

  @override
  double get area => pi * _radius * _radius;
}

class Rectangle extends Shape {
  double? width, height; // Making width and height nullable

  Rectangle({this.width, this.height, String? color}) : super(color ?? 'White'); // Handling null with the null-aware operator ??
  Rectangle.square(double size)
      : width = size, height = size, super('White'); // Providing default value for color

  @override
  double get area => width! * height!; // Accessing width and height with null assertion operator

  @override
  void draw() {
    print('It is a rectangle');
    super.draw();
  }
}

void main() {
  var c = Circle(20, color: 'Yellow');
  var r = Rectangle(height: 2, color: 'Green', width: 5);
  var s = Rectangle.square(3);

  print("Circle's area is ${c.area} ");
  c.draw();

  print("\nRectangle's area is ${r.area} ");
  r.draw();

  print("\nSquare's area is ${s.area} ");
  s.draw();

  print('');

  Rectangle.square(20)
    ..color = 'Yellow'
    ..draw();

  print('');

  var square = Rectangle.square(20);
  square.color = 'Yellow';
  square.draw();
}
