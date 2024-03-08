import 'dart:math';

// Abstract class Shape
abstract class Shape {
  // Abstract method to calculate the area
  double calculateArea();
}

// Subclass Circle
class Circle extends Shape {
  double radius;

  // Constructor
  Circle(this.radius);

  // Implementation of calculateArea for Circle
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

// Subclass Square
class Square extends Shape {
  double side;

  // Constructor
  Square(this.side);

  // Implementation of calculateArea for Square
  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Create a Circle object
  Circle myCircle = Circle(5.0);

  // Calculate and print the area of the circle
  double circleArea = myCircle.calculateArea();
  print("Area of the Circle: $circleArea");

  // Create a Square object
  Square mySquare = Square(4.0);

  // Calculate and print the area of the square
  double squareArea = mySquare.calculateArea();
  print("Area of the Square: $squareArea");
}
