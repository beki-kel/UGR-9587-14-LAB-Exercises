void main() {
  // Create an empty shopping cart (Map with product names and quantities)
  Map<String, int> shoppingCart = {};

  // Add items to the cart
  addToCart(shoppingCart, 'Product A', 2);
  addToCart(shoppingCart, 'Product B', 1);
  addToCart(shoppingCart, 'Product C', 3);

  // Print the current contents of the cart
  print('Current Shopping Cart: $shoppingCart');

  // Calculate and print the total price
  double totalPrice = calculateTotalPrice(shoppingCart);
  print('\nTotal Price: \$$totalPrice');

  // Remove an item from the cart
  removeFromCart(shoppingCart, 'Product B', 1);

  // Print the updated contents of the cart
  print('\nUpdated Shopping Cart: $shoppingCart');

  // Calculate and print the new total price
  totalPrice = calculateTotalPrice(shoppingCart);
  print('\nNew Total Price: \$$totalPrice');
}

void addToCart(Map<String, int> cart, String productName, int quantity) {
  cart.update(productName, (value) => value + quantity, ifAbsent: () => quantity);
}

void removeFromCart(Map<String, int> cart, String productName, int quantity) {
  if (cart.containsKey(productName)) {
    int currentQuantity = cart[productName]!;
    if (currentQuantity > quantity) {
      cart[productName] = currentQuantity - quantity;
    } else {
      cart.remove(productName);
    }
  }
}

double calculateTotalPrice(Map<String, int> cart) {
  const productPrices = {
    'Product A': 10.0,
    'Product B': 20.0,
    'Product C': 15.0,
  };

  double total = 0.0;
  cart.forEach((productName, quantity) {
    if (productPrices.containsKey(productName)) {
      total += productPrices[productName]! * quantity;
    }
  });

  return total;
}
