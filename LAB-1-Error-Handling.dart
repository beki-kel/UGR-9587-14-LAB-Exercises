import 'dart:io';

void main() {
  try {
    // Get user input as a string
    stdout.write('Enter a number: ');
    String userInput = stdin.readLineSync()!;

    // Attempt to convert the input to an integer
    int result = int.parse(userInput);

    // Display the result
    print('Converted Integer: $result');
  } catch (e) {
    // Handle FormatException
    print('Error: Invalid input. Please enter a valid number.');
  }
}
