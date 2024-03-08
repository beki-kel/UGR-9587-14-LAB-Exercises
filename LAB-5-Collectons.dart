class Student {
  String name;
  List<int> marks;

  // Constructor
  Student(this.name, this.marks);

  // Method to calculate average mark
  double calculateAverageMark() {
    if (marks.isEmpty) {
      // Handle the case where there are no marks
      print('No marks available for $name');
      return 0.0;
    }

    // Using list.reduce to calculate the sum of marks
    int sum = marks.reduce((a, b) => a + b);

    // Calculate and return the average
    return sum / marks.length;
  }
}

void main() {
  // Example usage
  Student student1 = Student('John', [85, 90, 78, 92, 88]);
  Student student2 = Student('Alice', []);

  double averageMark1 = student1.calculateAverageMark();
  double averageMark2 = student2.calculateAverageMark();

  print('${student1.name}\'s average mark: $averageMark1');
  print('${student2.name}\'s average mark: $averageMark2');
}
