import 'dart:io';

void main() {
  print("Enter a string: ");
  String userInput = stdin.readLineSync()!;
  
  String reversedString = reverseString(userInput);
  print("Original String: $userInput");
  print("Reversed String: $reversedString");
}

String reverseString(String input) {
  return String.fromCharCodes(input.runes.toList().reversed);
}
