import 'dart:io';
void main() {
  const int speedOfLight = 299792458; // meters per second

  print("Enter the distance in meters: ");
  String userInput = stdin.readLineSync()!;
  double distance = double.parse(userInput);

  // Calculate the time it takes for light to travel the given distance
  double time = distance / speedOfLight;

  print("Time for light to travel $distance meters: $time seconds");
}