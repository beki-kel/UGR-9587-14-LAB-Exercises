import 'dart:io';

void main() {
  const int speedOfLight = 299792458;

  // Get user input for distance
  print("Enter the distance in meters:");
  String userInput = stdin.readLineSync() ?? "0";

  try {
    // Parse user input as an integer
    int distance = int.parse(userInput);

    // Calculate time using the formula: time = distance / speed
    double time = distance / speedOfLight;

    // Print the result
    print("Time for light to travel $distance meters: $time seconds");
  } catch (e) {
    print("Invalid input. Please enter a valid integer.");
  }
}
