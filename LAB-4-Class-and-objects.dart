class Product {
  String name;
  double price;
  int quantity;

  // Constructor
  Product(this.name, this.price, this.quantity);

  // Method to calculate the total cost
  double calculateTotalCost() {
    return price * quantity.toDouble();
  }
}

void main() {
  // Create a Product object
  Product myProduct = Product("Laptop", 1200.0, 3);

  // Calculate and print the total cost
  double totalCost = myProduct.calculateTotalCost();
  print("Total cost of ${myProduct.name}: \$${totalCost.toStringAsFixed(2)}");
}
