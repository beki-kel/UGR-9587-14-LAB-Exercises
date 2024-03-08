class Rectangle {
  double width;
  double height;

  // Constructor
  Rectangle(this.width, this.height);

  // Method to calculate the area
  double calculateArea() {
    return width * height;
  }

  // Method to calculate the perimeter
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create a Rectangle object
  Rectangle myRectangle = Rectangle(5.0, 8.0);

  // Calculate and print the area
  double area = myRectangle.calculateArea();
  print("Area: $area");

  // Calculate and print the perimeter
  double perimeter = myRectangle.calculatePerimeter();
  print("Perimeter: $perimeter");
}
