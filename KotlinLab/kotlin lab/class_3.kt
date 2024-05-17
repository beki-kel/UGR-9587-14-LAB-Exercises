class ShoppingCart {
    private val items = mutableMapOf<String, Double>()

    fun addItem(itemName: String, price: Double) {
        items[itemName] = price
    }

    fun removeItem(itemName: String) {
        items.remove(itemName)
    }

    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for ((_, price) in items) {
            totalPrice += price
        }
        return totalPrice
    }
}

fun main() {
    val shoppingCart = ShoppingCart()

    // Adding items to the cart
    shoppingCart.addItem("Laptop", 1200.0)
    shoppingCart.addItem("Phone", 800.0)
    shoppingCart.addItem("Headphones", 100.0)

    // Removing an item from the cart
    shoppingCart.removeItem("Phone")

    // Calculating total price
    val totalPrice = shoppingCart.calculateTotalPrice()
    println("Total Price: $totalPrice")
}