import 'dart:io';

void main() {
  print("Enter the grade (0-100): ");
  int grade = int.parse(stdin.readLineSync()!);

  String letterGrade = getLetterGrade(grade);

  print("Letter Grade: $letterGrade");
}

String getLetterGrade(int grade) {
  switch (grade ~/ 10) {
    case 10:
    case 9:
      return 'A';
    case 8:
      return 'B';
    case 7:
      return 'C';
    case 6:
      return 'D';
    default:
      return 'F';
  }
}
