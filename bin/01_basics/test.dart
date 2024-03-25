double calculateArea(double length, double width) {
  return length * width;
}

void main() {
  double length = 5;
  double width = 3;
  double area = calculateArea(length, width);
  print("The area of the rectangle is: $area");
}
