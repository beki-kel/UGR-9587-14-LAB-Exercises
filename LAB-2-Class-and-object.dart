import './LAB-1-classes-and-Object.dart';

class Student extends Person {
  int rollNumber;
  List<int> marks;

  // Constructor
  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  // Method to calculate total marks
  int calculateTotalMarks() {
    return marks.reduce((a, b) => a + b);
  }

  // Method to calculate average marks
  double calculateAverageMarks() {
    if (marks.isEmpty) {
      return 0.0;
    }
    return calculateTotalMarks() / marks.length;
  }

  // Method to display information about the student
  @override
  void displayInfo() {
    super.displayInfo();
    print("Total Marks: ${calculateTotalMarks()}");
    print("Average Marks: ${calculateAverageMarks()}");
    print("------------");
  }
}

void main() {
  // Create student objects
  Student student1 = Student("Alice Johnson", 20, "456 Oak Avenue", 101, [85, 90, 92, 88, 89]);
  Student student2 = Student("Bob Smith", 22, "789 Pine Road", 102, [78, 85, 80, 92, 88]);

  // Display information about the students
  print("Information about Students:");
  student1.displayInfo();
  student2.displayInfo();
}
