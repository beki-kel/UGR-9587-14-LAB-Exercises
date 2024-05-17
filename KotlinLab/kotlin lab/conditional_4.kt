fun main() {
    // Input numbers
    val number1 = 25
    val number2 = 15
    val number3 = 30

    // Find the largest number
    val largestNumber = findLargest(number1, number2, number3)
    println("The largest number is: $largestNumber")
}

fun findLargest(num1: Int, num2: Int, num3: Int): Int {
    return if (num1 > num2) {
        if (num1 > num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 > num3) {
            num2
        } else {
            num3
        }
    }
}
