class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);

  // Method to display information about the person
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("------------");
  }
}

void main() {
  // Create objects of the Person class
  Person person1 = Person("John Doe", 25, "123 Main Street");
  Person person2 = Person("Jane Smith", 30, "456 Oak Avenue");

  // Display information about the persons
  print("Original Information:");
  person1.displayInfo();
  person2.displayInfo();

  // Modify attributes
  person1.age = 26;
  person2.address = "789 Pine Road";

  // Display updated information
  print("Updated Information:");
  person1.displayInfo();
  person2.displayInfo();
}
