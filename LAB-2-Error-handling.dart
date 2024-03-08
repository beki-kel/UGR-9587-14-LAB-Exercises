class DivisionByZeroException implements Exception {
  String errorMessage() => 'Error: Division by zero is not allowed.';
}

double divideNumbers(double numerator, double denominator) {
  if (denominator == 0) {
    throw DivisionByZeroException();
  }
  return numerator / denominator;
}

void main() {
  try {
    double result = divideNumbers(10, 0);
    print('Result: $result');
  } catch (e) {
    if (e is DivisionByZeroException) {
      print(e.errorMessage());
    } else {
      print('Error: $e');
    }
  }
}